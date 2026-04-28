#!/bin/bash

POWERED=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ "$POWERED" != "yes" ]]; then
  echo "󰂲 off"
else
  # Get the first connected device name
  CONNECTED_DEVICE=$(bluetoothctl devices | while read -r line; do
    MAC=$(echo "$line" | awk '{print $2}')
    NAME=$(echo "$line" | cut -d' ' -f3-)
    IS_CONNECTED=$(bluetoothctl info "$MAC" | grep "Connected: yes")
    if [[ -n "$IS_CONNECTED" ]]; then
      echo "$NAME"
      break
    fi
  done)

  if [[ -n "$CONNECTED_DEVICE" ]]; then
    echo "󰂯 $CONNECTED_DEVICE"
  else
    echo "󰂯 idle"
  fi
fi
