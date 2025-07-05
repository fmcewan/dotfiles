#!/bin/bash

# Find the name of the first connected Bluetooth device that supports the Audio Sink profile.

# Get a list of MAC addresses for all currently connected devices.
connected_macs=$(bluetoothctl devices Connected | awk '{print $2}')

# If no devices are connected, output empty JSON and exit immediately.
if [ -z "$connected_macs" ]; then
  echo '{"connected_device": ""}'
  exit 0
fi

device_name=""

# Loop through each connected MAC address.
for mac in $connected_macs; do
  # Get the full information for the device.
  info=$(bluetoothctl info "$mac")

  # Check if the device supports the Audio Sink profile (UUID 110b).
  if echo "$info" | grep -q "0000110b-0000-1000-8000-00805f9b34fb"; then
    # If it's an audio device, extract its name.
    device_name=$(echo "$info" | grep "Name:" | cut -d ' ' -f 2-)
    # Exit the loop since we've found our audio device.
    break
  fi
done

# Output the result in JSON format. Using jq is safer than echo
# as it correctly handles names with special characters.
jq -n --arg device "$device_name" '{"connected_device": $device}'
