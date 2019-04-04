#!/bin/sh

[ "x$1" = "x" -o "x$2" = "x" ] && echo "Need two options..." && exit 1
[ ! -f "$1" -o ! -f "$2" ] && echo "Need two options exist..." && exit 2

diff -Nur $1 $2 | grep "^[+-][^#+-]" | sort | uniq > /tmp/diff-tmp

while read line
do
	num=$(grep "`echo $line | sed "s/[+-]//"`" /tmp/diff-tmp | wc -l)
	[ $num -ne 2 ] && echo "$line"
done < /tmp/diff-tmp
rm -rf /tmp/diff-tmp
