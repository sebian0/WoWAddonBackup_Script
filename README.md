<h1> WoWAddonBackup_Script </h1>

Quick Powershell script to backup WoW Addons as well as your WTF folder. Quick script I wrote for my wife as she asked me if there was any way to make sure her classic wow folder stayed backed up in case it was ever wiped.

Obviously, this script will run no matter what, so if you identify your settings are wiped, you will need to stop this script from running on a schedule otherwise it will simply copy the wiped folders over and delete the current backups.

This specifically backs up your classic WoW addons and WTF files.

# Things to note

- If your World of Warcraft folder is anywhere except PFx86, you will need to revise the variables at the beginning of the script.

# Recommended use 

Create a scheduled task in Task Scheduler to run this script at a desired frequency (daily, biweekly, etc.)
