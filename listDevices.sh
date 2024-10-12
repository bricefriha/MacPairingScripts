# list all the simulator devices with their names and ids
xcrun simctl list devices | grep -Eo '([a-zA-Z0-9 ]+ \([0-9.]+\)) \[([a-f0-9-]+)\]' | awk '{print $1, $2, $3, $4}'
