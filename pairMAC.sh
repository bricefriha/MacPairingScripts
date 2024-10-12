# Command to send the IPA file
scp "$LOCAL_IPA_PATH" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

# Command to install the IPA file on the iOS Simulator
ssh "$REMOTE_USER@$REMOTE_HOST" << EOF
xcrun simctl install booted "$REMOTE_PATH"
xcrun simctl launch booted com.yourcompany.yourapp
EOF