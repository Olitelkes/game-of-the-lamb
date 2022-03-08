#!/bin/bash

  echo
  echo "Welcome to the game of the cabbage, the sheep and the wolf."
  echo
  echo "A farmer has a one cabbage, one sheep and one wolf."
  echo "Today it's spring and the farmer needs to bring all of them"
  echo "far away in the recently unfrozen lands."
  echo
  echo "On their way, they have to cross a river, to pass the river they can use the boat."
  echo "The boat has only 2 seats, one for the farmer and one for either the cabbage, the sheep or the wolf."
  echo
  echo "When the farmer is on the other side of the river, the sheep eats the cabbage and the wolf eats the sheep."
  echo
  echo "How the farmer can cross the river without losing any of his belongings."
  echo
  echo "Start : Everybody is waiting on the side of the river, the farmer is in the boat and there is one free space in the boat."
  echo

ARR=0
BOAT=0
BOATWHERE=0
DEP=7
CABBAGE=0
GOAT=0
WOLF=0

while true ; do

	BOATQ=
	LOAD=
	LOADA=

	#ALL
	if [ $DEP = 7 ] && [ $ARR =  0 ] && [ $BOATWHERE = 0 ] ; then
		echo "Cabbage Sheep and Wolf are at departure. Boat is at departure"
		echo "Departure                Arrival   "
		echo "           Boat                    "
		echo "Cabbage  |              |          "
		echo "Sheep    |              |          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 7 ] && [ $ARR =  0 ] && [ $BOATWHERE = 1 ] ; then
		echo "Cabbage Sheep and Wolf are at departure. Boat is at arrival"
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "Sheep    |              |          "
		echo "Wolf     |              |          "
  		echo
        #Cabbage solo
	elif [ $DEP = 6 ] && [ $ARR =  0 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep and Wolf are at departure. Cabbage is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |Cabbage       |          "
		echo "Sheep    |              |          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 6 ] && [ $ARR =  0 ] && [ $BOATWHERE = 1 ]; then
		echo "Sheep and Wolf are at departure. Cabbage is in the boat at arrival." #Loose
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |       Cabbage|          "
		echo "☠️ Sheep☠️ |              |          "
		echo "😈Wolf😈 |              |          "
		read -e -p "Wolf eats Sheep, you lost, try again"
		exit 0
	elif [ $DEP = 6 ] && [ $ARR =  1 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep and Wolf are at departure. Cabbage is at arrival. Boat is at departure"
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "Sheep    |              |          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 6 ] && [ $ARR =  1 ] && [ $BOATWHERE = 1 ]; then
		echo "Sheep and Wolf are at departure. Cabbage is at arrival. Boat is at arrival" #Loose
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "☠️ Sheep☠️ |              |          "
		echo "😈Wolf😈 |              |          "
		read -e -p "Wolf eats Sheep, you lost, try again"
		exit 0
        #Sheep solo
	elif [ $DEP = 5 ] && [ $ARR =  0 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Wolf are at departure. Sheep is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "         |Sheep         |          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 5 ] && [ $ARR =  0 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Wolf are at departure. Sheep is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "         |         Sheep|          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 5 ] && [ $ARR =  2 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Wolf are at departure. Sheep is at arrival. Boat is at departure"
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "         |              |Sheep     "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 5 ] && [ $ARR =  2 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Wolf are at departure. Sheep is at arrival. Boat is at arrival"
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "         |              |Sheep     "
		echo "Wolf     |              |          "
  		echo
        #Wolf solo
	elif [ $DEP = 3 ] && [ $ARR =  0 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Sheep are at departure. Wolf is in the boat at departure."
		echo "Departure                Arrival   "
		echo "           Boat                    "
		echo "Cabbage  |              |          "
		echo "Sheep    |              |          "
		echo "         |Wolf          |          "
  		echo
	elif [ $DEP = 3 ] && [ $ARR =  0 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Sheep are at departure. Wolf is in the boat at arrival." #Loose
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "☠️Cabbage☠️|              |          "
		echo "😈Sheep😈|              |          "
		echo "         |          Wolf|          "
		read -e -p "Sheep eats Cabbage, you lost, try again"
		exit 0
	elif [ $DEP = 3 ] && [ $ARR =  4 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Sheep are at departure. Wolf is at arrival. Boat is at departure"
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "Sheep    |              |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 3 ] && [ $ARR =  4 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Sheep are at departure. Wolf is at arrival. Boat is at arrival" #Loose
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "☠️Cabbage☠️|              |          "
		echo "😈Sheep😈|              |          "
		echo "         |              |Wolf      "
		read -e -p "Sheep eats Cabbage, you lost, try again"
  		echo
		exit 0
	#Cabbage and Sheep
	elif [ $DEP = 4 ] && [ $ARR =  3 ] && [ $BOATWHERE = 0 ]; then
		echo "Wolf is at departure. Cabbage and Sheep are at arrival. Boat is at departure." #Loose
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |☠️Cabbage☠️ "
		echo "         |              |😈Sheep😈 "
		echo "Wolf     |              |          "
		read -e -p "Sheep eats Cabbage, you lost, try again"
		exit 0
	elif [ $DEP = 4 ] && [ $ARR =  3 ] && [ $BOATWHERE = 1 ]; then 
		echo "Wolf is at departure. Cabbage and Sheep are at arrival. Boat is at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "         |              |Sheep     "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 4 ] && [ $ARR =  1 ] && [ $BOATWHERE = 0 ]; then
		echo "Wolf is at departure. Cabbage is at arrival. Sheep is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "         |Sheep         |          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 4 ] && [ $ARR =  1 ] && [ $BOATWHERE = 1 ]; then
		echo "Wolf is at departure. Cabbage is at arrival. Sheep is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "         |         Sheep|          "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 4 ] && [ $ARR =  2 ] && [ $BOATWHERE = 0 ]; then
		echo "Wolf is at departure. Sheep is at arrival. Cabbage is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |Cabbage       |          "
		echo "         |              |Sheep     "
		echo "Wolf     |              |          "
  		echo
	elif [ $DEP = 4 ] && [ $ARR =  2 ] && [ $BOATWHERE = 1 ]; then
		echo "Wolf is at departure. Sheep is at arrival. Cabbage is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |       Cabbage|          "
		echo "         |              |Sheep     "
		echo "Wolf     |              |          "
  		echo
	#Cabbage and Wolf
	elif [ $DEP = 2 ] && [ $ARR =  5 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep is at departure. Cabbage and Wolf are at arrival. Boat is at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "Sheep    |              |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 2 ] && [ $ARR =  5 ] && [ $BOATWHERE = 1 ]; then 
		echo "Sheep is at departure. Cabbage and Wolf are at arrival. Boat is at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "Sheep    |              |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 2 ] && [ $ARR =  1 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep is at departure. Cabbage is at arrival. Wolf is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "Sheep    |              |          "
		echo "         |Wolf          |          "
  		echo
	elif [ $DEP = 2 ] && [ $ARR =  1 ] && [ $BOATWHERE = 1 ]; then
		echo "Sheep is at departure. Cabbage is at arrival. Wolf is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "Sheep    |              |          "
		echo "         |          Wolf|          "
  		echo
	elif [ $DEP = 2 ] && [ $ARR =  4 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep is at departure. Wolf is at arrival. Cabbage is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |Cabbage       |          "
		echo "Sheep    |              |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 2 ] && [ $ARR =  4 ] && [ $BOATWHERE = 1 ]; then
		echo "Sheep is at departure. Wolf is at arrival. Cabbage is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |       Cabbgae|          "
		echo "Sheep    |              |          "
		echo "         |              |Wolf      "
  		echo
	#Sheep and Wolf
	elif [ $DEP = 1 ] && [ $ARR =  6 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage is at departure. Sheep and Wolf are at arrival. Boat is at departure." #Loose
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "         |              |☠️ Sheep☠️  "
		echo "         |              |😈Wolf😈  "
		read -e -p "Wolf eats Sheep, you lost, try again"
		exit 0
	elif [ $DEP = 1 ] && [ $ARR =  6 ] && [ $BOATWHERE = 1 ]; then 
		echo "Cabbage is at departure. Sheep and Wolf are at arrival. Boat is at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "         |              |Sheep     "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 1 ] && [ $ARR =  4 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage is at departure. Wolf is at arrival. Sheep is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "         |Sheep         |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 1 ] && [ $ARR =  4 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage is at departure. Wolf is at arrival. Sheep is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "         |         Sheep|          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 1 ] && [ $ARR =  2 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage is at departure. Sheep is at arrival. Wolf is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "Cabbage  |              |          "
		echo "         |              |Sheep     "
		echo "         |Wolf          |          "
  		echo
	elif [ $DEP = 1 ] && [ $ARR =  2 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage is at departure. Sheep is at arrival. Wolf is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "Cabbage  |              |          "
		echo "         |              |Sheep     "
		echo "         |          Wolf|          "
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  6 ] && [ $BOATWHERE = 0 ]; then
		echo "Sheep and Wolf are at arrival. Cabbage is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |Cabbage       |          "
		echo "         |              |Sheep     "
		echo "         |              |Wolf      "
		read -e -p "Wolf eats Sheep, you lost, try again"
		exit 0
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  6 ] && [ $BOATWHERE = 1 ]; then
		echo "Sheep and Wolf are at arrival. Cabbage is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |       Cabbage|          "
		echo "         |              |Sheep     "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  3 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Sheep are at arrival. Wolf is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "         |              |Sheep     "
		echo "         |Wolf          |          "
		read -e -p "Sheep eats Cabbage, you lost, try again"
		exit 0
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  3 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Sheep are at arrival. Wolf is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "         |              |Sheep     "
		echo "         |          Wolf|          "
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  5 ] && [ $BOATWHERE = 0 ]; then
		echo "Cabbage and Wolf are at arrival. Sheep is in the boat at departure."
		echo "Departure                Arrival   "
		echo "          Boat                     "
		echo "         |              |Cabbage   "
		echo "         |Sheep         |          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  5 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage and Wolf are at arrival. Sheep is in the boat at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "         |         Sheep|          "
		echo "         |              |Wolf      "
  		echo
	elif [ $DEP = 0 ] && [ $ARR =  7 ] && [ $BOATWHERE = 1 ]; then
		echo "Cabbage, Sheep and Wolf are at arrival."
		echo "Departure                Arrival   "
		echo "                    Boat           "
		echo "         |              |Cabbage   "
		echo "         |              |Sheep     "
		echo "         |              |Wolf      "
  		echo
		read -e -p "Congratulation, you won !!!"
		exit 0
	fi

	
	echo
	echo "What to do ?" 
	#Bateau vide et départ
	if [[ $BOAT -eq 0 && $BOATWHERE -eq 0 ]] ; then
		if [[ $CABBAGE -eq 0 && $DEP -eq 1 || $DEP -eq 3 || $DEP -eq 5 || $DEP -eq 7 ]] ; then
			LOAD="Cabbage ?(C)"
		fi
		if [[ $GOAT -eq 0 && $DEP -eq 2 || $DEP -eq 3 || $DEP -eq 6 || $DEP -eq 7 ]] ; then
			LOAD="$LOAD Sheep ?(S)"
		fi
		if [[ $WOLF -eq 0 && $DEP -eq 4 || $DEP -eq 5 || $DEP -eq 6 || $DEP -eq 7 ]] ; then
			LOAD="$LOAD Wolf ?(W)"
		fi
		BOATQ="Boat is empty, Load ?(L) " 
	#Bateau vide et arrivée
	elif [[ $BOAT -eq 0 && $BOATWHERE -eq 1 ]] ; then
		if [[ $CABBAGE -eq 0 && $ARR -eq 1 || $ARR -eq 3 || $ARR -eq 5 || $ARR -eq 7 ]] ; then
			LOAD="Cabbage ?(C)"
		fi
		if [[ $GOAT -eq 0 && $ARR -eq 2 || $ARR -eq 3 || $ARR -eq 6 || $ARR -eq 7 ]] ; then
			LOAD="$LOAD Sheep ?(S)"
		fi
		if [[ $WOLF -eq 0 && $ARR -eq 4 || $ARR -eq 5 || $ARR -eq 6 || $ARR -eq 7 ]] ; then
			LOAD="$LOAD Wolf ?(W)"
		fi
		BOATQ="Boat is empty, Load ?(L) " 
	#Bateau plein
	elif [[ $BOAT -eq 1 ]] ; then
		if [[ $CABBAGE -eq 1 ]] ; then
			BOATQ="Boat is occupied by Cabbage, Unload ?(U)"
		elif [[ $GOAT -eq 1 ]] ; then
			BOATQ="Boat is occupied by Sheep, Unload ?(U)"
		elif [[ $WOLF -eq 1 ]] ; then
			BOATQ="Boat is occupied by Wolf, Unload ?(U)"
		fi
	fi

	if [[ $CABBAGE -eq 0 || $GOAT -eq 0 || $WOLF -eq 0  && $BOAT -eq 0 ]]; then
		read -e -p "Move boat ?(M) or $BOATQ " ACTION
	else
		read -e -p "Nothing to load, please move boat first, press enter to continue"
	fi

	if [ -z $ACTION ] ; then
		read -e -p "Your answer has not been understood, try again, enter to continue"
	elif [ $ACTION = "L" ] ; then
		if [[ -z $LOAD ]]; then
			read -e -p "Nothing to load, please move boat first, press enter to continue"
		else
			read -e -p "$LOAD " LOADA
			if [ $BOATWHERE = 0 ] ; then
				if [[ -z $LOADA  ]] ; then
					read -e -p "Your answer has not been understood, try again, enter to continue"
				elif [[ $LOADA = "C" && $CABBAGE -eq 0 && $ARR -ne 1 ]] ; then
					CABBAGE=1
					BOAT=1
					DEP=$(($DEP-1))
					echo "Cabbage is in the boat"
				elif [ $LOADA = "S" ] ; then
					GOAT=1
					BOAT=1
					DEP=$(($DEP-2))
					echo "Sheep is in the boat"
				elif [ $LOADA = "W" ] ; then
					WOLF=1
					BOAT=1
					DEP=$(($DEP-4))
					echo "Wolf is in the boat"
				fi
			elif [ $BOATWHERE = 1 ] ; then
				if [[ -z $LOADA  ]] ; then
					read -e -p "Your answer has not been understood, try again, enter to continue"
	                	elif [ $LOADA = "C" ] ; then
                                	CABBAGE=1
                                	BOAT=1
					ARR=$(($ARR-1))
					echo "Cabbage is out the boat"
                        	elif [ $LOADA = "S" ] ; then
                                	GOAT=1
                                	BOAT=1
					ARR=$(($ARR-2))
					echo "Sheep is out the boat"
                        	elif [ $LOADA = "W" ] ; then
                                	WOLF=1
                                	BOAT=1
					ARR=$(($ARR-4))
					echo "Wolf is out the boat"
                        	fi		
			fi
		fi
	elif [ $ACTION = "U" ] ; then
		if [ $BOATWHERE = 0 ] ; then
			if [ $CABBAGE = 1  ] ; then
				CABBAGE=0
				BOAT=0
				DEP=$(($DEP+1))
				echo "Cabbage is out of the boat"
			elif [ $GOAT = 1  ] ; then
				GOAT=0
				BOAT=0
				DEP=$(($DEP+2))
				echo "Sheep is out of the boat"
			elif [ $WOLF = 1  ] ; then
				WOLF=0
				BOAT=0
				DEP=$(($DEP+4))
				echo "Wolf is out of the boat"
			fi
		elif [ $BOATWHERE = 1 ] ; then
			if [ $CABBAGE = 1  ] ; then
				CABBAGE=0
				BOAT=0
				ARR=$(($ARR+1))
				echo "Cabbage is out of the boat"
			elif [ $GOAT = 1  ] ; then
				GOAT=0
				BOAT=0
				ARR=$(($ARR+2))
				echo "Sheep is out of the boat"
			elif [ $WOLF = 1  ] ; then
				WOLF=0
				BOAT=0
				ARR=$(($ARR+4))
				echo "Wolf is out of the boat"
			fi	
		fi
	elif [ $ACTION = "M" ] ; then
		if [ $BOATWHERE = 0 ] ; then 
			BOATWHERE=1
		elif [ $BOATWHERE = 1 ] ; then
			BOATWHERE=0
		fi
	fi
done
