#!/bin/bash

WLSUNSET_COMMAND="wlsunset -t 4000 -T 6500 -g 0.96"
RUNNING_ICON="󰖔"
STOPPED_ICON="󰖙"

is_wlsunset_running() {
    pgrep -x "wlsunset" > /dev/null
}

# Toggle wlsunset
toggle_wlsunset() {
    if is_wlsunset_running; then
        pkill -x "wlsunset"
    else
        $WLSUNSET_COMMAND &
    fi
}

# Check if this script is being run to toggle or just output status
if [[ "$1" == "toggle" ]]; then
    toggle_wlsunset
    exit 0
fi

# Output status and icon for Waybar
if is_wlsunset_running; then
    echo -e $RUNNING_ICON
else
    echo -e $STOPPED_ICON
fi
