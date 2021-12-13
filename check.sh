echo "log4j problemen zoeken...";
if [ "$(locate log4j|grep -v log4js)" ]; then
  echo "### bestanden kunnen problemen hebben, bestanden zijn:";
  locate log4j|grep -v log4js;
fi;
if [ "$(dpkg -l|grep log4j|grep -v log4js)" ]; then
  echo "### packages kunnen problemen hebben, packages zijn:";
  dpkg -l|grep log4j;
fi;
if [ "$(which java)" ]; then
  echo "java is staat op de server, dus even handmatig zoeken naar software die dit gebruikt";
fi;
echo "Als er boven deze regel niks staat ben je safe, althans dat hoop ik voor je :)";
