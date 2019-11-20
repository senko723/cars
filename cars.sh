#! /bin/bash
# cars.sh
# Peter Senko

while true 
do 
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	echo "your choice: "; read CHOICE
	case $CHOICE in
		"1")
		echo "year: "; read YEAR
		echo "make: "; read MAKE
		echo "model: "; read MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars 
		;;
		"2")
		sort My_old_cars 
		;;
		"3") 
		echo "Goodbye"
		break 
		;;
	esac
done
