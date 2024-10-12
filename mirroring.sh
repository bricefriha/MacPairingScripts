# Start the simulator
xcrun simctl boot $simulatorID

# NOTE: install ffmpeg first
# Start streaming
ffmpeg -f avfoundation -i "1:0" -r 30 -s 1280x720 -f mpegts udp://localhost:12345

# Connect to the simulator stream
ssh -L 12345:localhost:12345 $MAC_username@$MAC_ip

# play the broadcast 
ffplay udp://@:12345
