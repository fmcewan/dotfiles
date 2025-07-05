#!/bin/bash

# A script to toggle the Eww powermenu

# The name of the powermenu window as defined in your eww.yuck
POWERMENU_WINDOW="powermenu"

# Get the path to the eww config directory
EWW_CONFIG_DIR="$HOME/.config/eww"

# Check the list of active eww windows
if eww -c "$EWW_CONFIG_DIR" active-windows | grep -q "${POWERMENU_WINDOW}"; then
  # If the powermenu is open, close it
  eww -c "$EWW_CONFIG_DIR" close "$POWERMENU_WINDOW"
else
  # If it's closed, open it
  eww -c "$EWW_CONFIG_DIR" open "$POWERMENU_WINDOW"
fi
