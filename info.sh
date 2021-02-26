a1=("whois" "sublist3r" "dnsenum" "whatweb" )
i=0
while [ $i -lt 5 ]
do
if ! which ${a1[$i]}  > /dev/null; then
	printf " Package install ${a1[$i]} $i \n "
	sudo apt install ${a1[$i]}
fi
i=`expr $i + 1`
done 
hello ()
{
printf " Enter the website or ip address to gather information : \t "
		read ip
		if [ "$ip" = ""  ] 
		then
			echo " Please input ip or website "
		fi
}
while [ true ] 
do
printf " \t\t\t Information Gathering Techniques\n\n\n1 Whois\n2 Whatweb\n3 Find Subdomain\n4 Dns Information\n5 Exit\n6 Clear "
printf "\n Enter the choice \t "
read ch
case "$ch" in 
	"1")
		hello
		if [ "$ip" != "" ]
		then 
			whois $ip | more
		fi

		;;
	"2")
		hello
		if [ "$ip" != ""  ] 
		then
			whatweb -v $ip | more
		fi

		;;
	"3")
		hello
		if [ "$ip" != ""  ] 
		then
			sublist3r -d $ip 
		fi
		;;
	"4")	
		hello
		if [ "$ip" != ""  ] 
		then
			dnsenum $ip 
		fi
		;;
	"5")
		exit
		;;
	*)
		printf " Invalid Choice"
		read -t 1000
		;;

	"6")
		clear
		;;

esac


done
