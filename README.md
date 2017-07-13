# NFCAccessScriptDock

Contains file creating dockers containers. WAR archive's path has to be specified in order to execute the server, along with the mysql
database dump.

The script created allow us to bypass a driver error in the laptop code until a permanent solution is found (maybe the release of 
newer drivers). It main aim is to kill the process when an error occurs, and restart it. All processes run on background so no need to worry
about not having the possibility of using the raspberry while the script is running.


