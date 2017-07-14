# NFCAccessScriptDock

Contains file creating dockers containers. WAR archive's path has to be specified in order to execute the server, along with the mysql
database dump.

Table structure authUsers is also included but you need to create a database named authaccess then import the table only after you did this.
>> CREATE DATABASE authaccess;
>> source yourfile.sql

TABLE STRUCTURE IS : 
authUsers
----------------------------------------------------
| ID | uid | uname | ulastName | lastAccess | rank |
----------------------------------------------------

All VARCHAR except rank (integer), ID and lastAccess (DATETIME).

Almost every action require the rank so an idea is to play with the rank (negative values) to momentarly block access to someone.


The script created allow us to bypass a driver error in the laptop code until a permanent solution is found (maybe the release of 
newer drivers). It main aim is to kill the process when an error occurs, and restart it. All processes run on background so no need to worry
about not having the possibility of using the raspberry while the script is running.


