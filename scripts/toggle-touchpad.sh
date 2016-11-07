#!/bin/sh
 
Device="SynPS/2 Synaptics TouchPad"
 
if xinput list-props "$Device" | ag 'Device Enabled' | ag '0'; then
    xinput enable "$Device";
else
    xinput disable "$Device";
fi
