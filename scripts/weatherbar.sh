#!/bin/bash

#clima=$(cat ~/.config/weather.txt | sed 22q | grep value | awk '{print $2 $3 $4}' | sed 's/\"//g')

clima=$(cat ~/.config/weather.txt | sed 22q | grep value | awk '{print $2 $3 $4}' | sed 's/\"//g')

temp=$(cat ~/.config/weather.txt | grep temp_C | awk '{print $2}' | sed 's/\"//g' | sed 's/,//')

despejado=""
soleado=""
nublado=""
lluvia=""
tormenta=""
bajatemp=""
mediatem=""
altatemp=""

TEMPERATURA(){
	if [ "$temp" -gt 30 ] || [ "$temp" -eq 30 ]; then
		echo -e "$altatemp $temp °" 
	#elif ["$temp" -ge 30] && ["$temp" -le 18 ];then
	elif [ "$temp" -gt 19 ] && [ "$temp" -lt 30 ]; then	
		echo -e "$mediatem $temp °"	
	else
		echo "$bajatemp $temp °"
	fi	
}

CLIMA () {
if [[ "$clima" = "Clear" ]] || [[ "$clima" = "Sunny" ]]; then
	echo -e "$soleado $clima"
else
	echo -e "$nublado $clima"
fi
}
echo "$(CLIMA) $(TEMPERATURA)"

#CLIMA(){
#	if [ "$clima" = "Despejado" ]; then
#		echo -e "$despejado $clima"
#	elif [ "$clima" = "Soleado" ]; then
#		echo -e "$soleado $clima"
#	elif [ "$clima" = "Nublado" ] || [ "$clima" = "Cielocubierto" ]; then
#		if [ "$clima" = "Cielocubierto" ]; then
#			echo -e "$nublado Cielo cubierto"
#		else
#			echo -e "$nublado $clima"	 
#		fi	
#		echo -e "$nublado $clima"
#	elif [ "$clima" = "Ligeraslluvias" ]; then
#		echo -e "$lluvia Ligeras lluvias"		
#	else
#		echo -e "$nublado $clima"		
#	fi	
}

#CLIMA(){
#	if [[ "$clima" = "Clear" ]]; then
#		echo "$despejado Despejado"
#	elif [[ "$clima" = "Sunny" ]]; then
#		echo -e "$soleado Soleado"
#	elif [[ "$clima" = "Partlycloudy" ]]; then 
#		echo -e "$nublado Nubosidad"
#	elif [[ "$clima" = "Cloudy" ]]; then
#		echo -e "$nublado Nublado"	
#	elif [[ "$clima" = "Patchyrainpossible" ]]; then
#		echo -e "$lluvia LLuvias Aisladas"
#	elif [[ "$clima" = "Fog" ]]; then
#		echo -e " Niebla"				
#	else
#		echo -e "nada"	
#	fi	
#}



#WEATHER () {
#if [[ "$weather" = "Clear" ]] || [[ "$weather" = "Sunny" ]]; then
#	echo -e "$nocloud $weather"
#else
#	echo -e "$cloud $weather"
#fi
#}

#echo "$(WEATHER) $(TEMP)"
#TEMP() {
#	if [ "$temp" -gt 30 ]; then
#		echo -e $hitempicon $temp "°"
#	elif [ "$temp" -ge 10 ] && [ "$temp" -le 29 ]; then
#		echo -e $midtempicon $temp "°"
#	elif [ "$temp" -le 9]; then
#		echo -e $lotempicon $temp "°"
#	fi
#}

#WEATHER () {
#if [[ "$weather" = "Despejado" ]] || [[ "$weather" = "Soleado" ]]; then
#	echo -e "$nocloud $weather"
#else
#	echo -e "$cloud $weather"
#fi
#}
#[][][][][][][][][][][][][][][][][][[][][][[][][][][][][][][][]][][][]][[[[[[][][][]]]]]]
#print weather info
#TEMP() {
#if [ "$temp" -gt 80 ]; then
#	echo -e $hitempicon $temp
#elif [ "$temp" -ge 50 ] && [ "$temp" -le 79 ]; then
#	echo -e $midtempicon $temp
#elif [ "$temp" -le 49]; then
#	echo -e $lotempicon $temp
#fi
#}

#WEATHER () {
#if [[ "$weather" = "Clear" ]] || [[ "$weather" = "Sunny" ]]; then
#	echo -e "$nocloud $weather"
#else
#	echo -e "$cloud $weather"
#fi
#}

#echo $(WEATHER) $(TEMP)