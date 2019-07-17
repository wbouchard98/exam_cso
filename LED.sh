#!/bin/bash
# Initialisation des GPIOs. Les GPIOs nécessaires sont activés avec la commande export, puis la direction est choisie.

if [ ! -f "/sys/class/gpio/71" ]
then
echo "init gpio 71"
echo "71" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio71/direction
fi

if [ ! -f "/sys/class/gpio/233" ]
then
echo "init gpio 233"
echo "233" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio233/direction
fi

while : 
do
if [ $(cat /sys/class/gpio/gpio233/value) -eq 0 ];
	then 
		echo "1" > /sys/class/gpio/gpio71/value
	else
		echo "0" > /sys/class/gpio/gpio71/value
fi
done
