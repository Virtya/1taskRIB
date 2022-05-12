#!/bin/bash

if [ -e file.txt ]
then
	rm file.txt
fi

if [ -e ~/.bashrc ]
then
	if [ -s ~/.bashrc ]
	then    
		head -n 45 ~/.bashrc | tail -n 34 >> file.txt
		echo "Результат работы скрипта в файле file.txt"
	else
	echo "Файл пуст"
	fi
else
echo "Такого файла не существует"
fi	
