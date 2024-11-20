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
bat0_charge=$(cat /sys/class/power_supply/BAT0/energy_now)
bat1_charge=$(cat /sys/class/power_supply/BAT1/energy_now)
bat0_full=$(cat /sys/class/power_supply/BAT0/energy_full)
bat1_full=$(cat /sys/class/power_supply/BAT1/energy_full)
battery_charge=$((bat0_charge + bat1_charge))
battery_full=$((bat0_full + bat1_full))
battery=$((100 * battery_charge / battery_full))


# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo "$user@$host | $uptime | $battery % ($bat0_status) | $date_formatted"

