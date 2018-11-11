# ~/bin/get-volume.sh
#!/bin/bash
# Get the maximum volume of any pulseaudio sink channel
# amixer get Master | egrep -o "[0-9]+%"
vol=$(amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "off") { print "MM" } else { print $2 }}' | head -n 1)
#vol=$(amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "off") { print "MM" } else { print $2/10 }}' | head -n 1)

#case $vol in
#0|10)   bar='[-----]' ;;
#10|20)  bar='[/----]' ;;
#30|40)  bar='[//---]' ;;
#50|60)  bar='[///--]' ;;
#70|80)  bar='[////-]' ;;
#90|100) bar='[/////]' ;;
#*)      bar='[--!--]' ;;
#esac

echo $vol%
exit 0
