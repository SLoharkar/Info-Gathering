while [ true ] 
do
printf " \t\t\t Information Gathering Techniques\n\n\n1 Whois\n2 Whatweb\n3 Find Subdomain\n4 Dns Information\n5 Exit\n6 Clear "
printf "\n Enter the choice \t "
read ch
case "$ch" in 
	"1")
		printf " Enter the website or ip address to gather information : \t "
		read ip
		if [ "$ip" = ""  ] 
		then
			echo " Please input ip or website "
		else
			whois $ip | more
		fi

		;;
	"2")
		printf " Enter the website or ip address to gather information : \t "
		read ip
		if [ "$ip" = ""  ] 
		then
			echo " Please input ip or website "
		else
			whatweb -v $ip | more
		fi

		;;
	"3")
		
		printf " Enter the website or ip address to gather information : \t "
		read ip
		if [ "$ip" = ""  ] 
		then
			echo " Please input ip or website "
		else
			sublist3r -d $ip 
		fi
		;;
	"4")

		printf " Enter the website or ip address to gather information : \t "
		read ip
		if [ "$ip" = ""  ] 
		then
			echo " Please input ip or website "
		else
			dnsenum $ip 
		fi
		;;
	"5")
		exit
		;;

	"6")
		clear
		;;

esac


done
