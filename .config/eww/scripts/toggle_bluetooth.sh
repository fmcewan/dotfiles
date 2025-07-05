#!/bin/bash

# Get current power state from bluetoothctl show output
CURRENT_POWER_STATE=$(bluetoothctl show 2>/dev/null | grep "Powered:" | awk '{print $2}')

if [ "$CURRENT_POWER_STATE" = "yes" ]; then
  bluetoothctl power off
else
  bluetoothctl power on
fi

# Give a moment for the state to change before eww might poll again.
# Alternatively, you could force an eww update here if polling interval is long.
sleep 0.2
