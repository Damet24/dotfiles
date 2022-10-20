#!/usr/bin/env bash

# Simple demo volume control script module for Polybar

# Get current volume
VOL="$(pamixer --get-volume)"
MUTE="$(pamixer --get-mute)"
# Desired width of module
WIDTH="10"
# Multiply volume by this value
SVM="$(( 100/$WIDTH ))"

# Final output
OUTPUT=""

# Volume expressed as 0-$WIDTH
OUTPUT+="%{A1:pamixer -t:}"
if [ "$VOL" -gt "0" ] && [ "$MUTE" != "true" ]; then
    SV="$(( $VOL/$SVM ))"
else
    SV="0"
fi

# Change prefix based on mute status
[ "$MUTE" != "true" ] && OUTPUT+="V: " || OUTPUT+="M: "
OUTPUT+="%{A}"

VOLCOUNT=1

while [ "$VOLCOUNT" -lt "$(( $WIDTH+1 ))" ]; do
    # Get volume setting for current run through loop
    VOLSET="$(( $SVM*$VOLCOUNT ))"
    # Add click handler opening tag with appropriate volume setting
    OUTPUT+="%{A1:pamixer --set-volume $VOLSET:}"
    # If volume is greater than or equal to the count value, use =, otherwise use -
    if [ "$VOLCOUNT" -le "$SV" ]; then
        OUTPUT+="="
    else
        OUTPUT+="-"
    fi
    # Add click handler closing tag
    OUTPUT+="%{A}"
    # Iterate through loop
    VOLCOUNT="$(( $VOLCOUNT + 1 ))"
done

# Echo output wrapped in scroll handlers
echo "%{A5:pamixer -d 10:}%{A4:pamixer -i 10:}$OUTPUT%{A}%{A}"
