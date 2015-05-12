@echo off
@title=代销直连批处理
@echo on

setlocal enabledelayedexpansion

SET JAVA_HOME=d:\Program Files\Java\jdk1.6.0_22

set CLASSPATH=.;..\target\classes;%JAVA_HOME%\jre\lib;%JAVA_HOME%\jre\lib\ext;%JAVA_HOME%\jre\lib\security;..\target\lib;
for %%c in ("..\target\lib\*.jar") do set CLASSPATH=!CLASSPATH!;%%c;

"%JAVA_HOME%\bin\java" -Duser.timezone=GMT+8 -server -Xms52m -Xmx128m hwm.batch.capital.BatchCapitalIn M
