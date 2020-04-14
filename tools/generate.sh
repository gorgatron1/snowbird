#!/bin/zsh

guilds=(
	'report 564121831'
)
	
for g in $guilds ; do 
	args=("${(@s/ /)g}")
	echo "==============="
	echo "$args[1]"
	
	echo "FETCH: $guild"
	echo "python ~/bin/swgoh.help.py $args[2] $args[1]"
	
	python ~/bin/swgoh.help.py $args[2] $args[1] || (sleep 60 && python ~/bin/swgoh.help.py $args[2] $args[1]) || (sleep 120 && python ~/bin/swgoh.help.py $args[2] $args[1]) || exit 1
	
	time ~/bin/swgoh-tool --guild $args[1].json --unbrand --site docs 
#	sleep 60
done

echo "==============="
echo "ALLIANCE"

# time ~/bin/swgoh --alliance docs *.json
