#! /usr/bin/env bash
# Produces "21 days", for example
uptime=$(uptime -p)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

# user and hostname so we know where we are
user=$(whoami)
host=$(hostnamectl hostname)

# Returns the battery status: "Full", "Discharging", or "Charging".
bat0_status=$(cat /sys/class/power_supply/BAT0/status)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo "$user@$host | $uptime | n/a % ($bat0_status) | $date_formatted"

