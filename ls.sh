#!/bin/bash
#проверяем, был ли указан путь к каталогу
if [ -z "$1" ]
then
#Если путь не был указан, используем текущий каталог
directory="."
else
#Иначе используем указанный путь
directory="$1"
fi
#Используем команду find для поиска файлов в указанном каталоге
#Используем команду stat для получения информации о файлах
find"directory" -maxdepth 1 -printf "%M %u %g %s %s %TF %TR %f\n" | while
read -r permissions owner group size blocks date time name
do
#Выводим информацию о каждом файле
echo "Permissions: $permissions"
echo "Owner: $owner"
echo "Group: $group"
echo "Size: $size"
echo "Blocks: $blocks"
echo "Date: $date"
echo "Time: $time"
echo "Name: $name"
echo "-------------------"
