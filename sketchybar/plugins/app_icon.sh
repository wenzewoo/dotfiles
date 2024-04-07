#!/bin/sh

source "$HOME/.config/sketchybar/icons.sh"

case "$1" in
"Terminal" | "Warp" | "iTerm2" | "kitty")
    RESULT=$ICON_TERM
	;;
"Finder")
	RESULT=$ICON_FILE
	;;
"Weather")
	RESULT=$ICON_WEATHER
	;;
"Clock")
	RESULT=$ICON_CLOCK
	;;
"Mail" | "Microsoft Outlook")
	RESULT=$ICON_MAIL
	;;
"Calendar")
	RESULT=$ICON_CALENDAR
	;;
"Calculator" | "Numi")
	RESULT=$ICON_CALC
	;;
"Maps" | "Find My")
	RESULT=$ICON_MAP
	;;
"Voice Memos")
	RESULT=$ICON_MICROPHONE
	;;
"企业微信")
    RESULT=$QYWEIXIN
    ;;
"Messages" | "Slack" | "Microsoft Teams" | "Discord" | "Telegram" | "WeChat")
	RESULT=$ICON_CHAT
	;;
"Code")
    RESULT=$ICON_CODE
    ;;
"IntelliJ IDEA" | "GoLand" | "DataGrip" | "PyCharm")
    RESULT=$ICON_DEV
    ;;
"FaceTime" | "zoom.us" | "Webex")
	RESULT=$ICON_VIDEOCHAT
	;;
"Notes" | "TextEdit" | "Stickies" | "Microsoft Word")
	RESULT=$ICON_NOTE
	;;
"Reminders" | "Microsoft OneNote")
	RESULT=$ICON_LIST
	;;
"Photo Booth")
	RESULT=$ICON_CAMERA
	;;
"Google Chrome")
    RESULT=$ICON_CHROME
    ;;
"Safari" | "Beam" | "DuckDuckGo" | "Arc" | "Microsoft Edge" | "Google Chrome" | "Firefox" | "Firefox Nightly")
	RESULT=$ICON_WEB
	;;
"System Settings" | "System Information" | "TinkerTool")
	RESULT=$ICON_COG
	;;
"HOME")
	RESULT=$ICON_HOMEAUTOMATION
	;;
"Music" | "Spotify" | "网易云音乐")
	RESULT=$ICON_MUSIC
	;;
"Podcasts")
	RESULT=$ICON_PODCAST
	;;
"TV" | "QuickTime Player" | "VLC")
	RESULT=$ICON_PLAY
	;;
"Books")
	RESULT=$ICON_BOOK
	;;
"Font Book" | "Dictionary")
	RESULT=$ICON_BOOKINFO
	;;
"Activity Monitor")
	RESULT=$ICON_CHART
	;;
"Disk Utility")
	RESULT=$ICON_DISK
	;;
"Screenshot" | "Preview" | "Skim")
	RESULT=$ICON_PREVIEW
	;;
"1Password")
	RESULT=$ICON_PASSKEY
	;;
"NordVPN")
	RESULT=$ICON_VPN
	;;
"Progressive Downloaded" | "Transmission")
	RESULT=$ICON_DOWNLOAD
	;;
"Airflow")
	RESULT=$ICON_CAST
	;;
"Microsoft Excel")
	RESULT=$ICON_TABLE
	;;
"Microsoft PowerPoint")
	RESULT=$ICON_PRESENT
	;;
"OneDrive")
	RESULT=$ICON_CLOUD
	;;
"Curve")
	RESULT=$ICON_PEN
	;;
"VMware Fusion" | "UTM")
	RESULT=$ICON_REMOTEDESKTOP
	;;
"OrbStack" | "Lens")
	RESULT=$ICON_DOCKER
	;;
*)
	RESULT=$ICON_APP
	;;
esac

echo $RESULT
