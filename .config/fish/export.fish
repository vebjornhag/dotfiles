# Exports
set -xg WORKSPACE "/Users/vebjorn/workspace"

# Java
set -xg JAVA_8_HOME (/usr/libexec/java_home -v1.8)
set -xg JAVA_11_HOME (/usr/libexec/java_home -v11)
set -xg JAVA_17_HOME (/usr/libexec/java_home -v17)

set -xg JAVA {$JAVA_11_HOME}/jre/bin/java

# Logstash
set -xg LOGSTASH_DESTINATION alt-aot-g-fou01.fe.cosng.net:4560

# Make Properties
set -xg envFile '--env-file=/Users/vebjorn/.env'
set -xg mvnProperties "-Ddb.url='$oracleDbUrl' -Ddb.user=$oracleDbUser -Ddb.password=$oracleDbPassword -Doracle.net.disableOob=true -Dmoc.rest.endpoint=https://eos-moc-rest-srv-d1.apps.os-global.finods.com/api/ -Dmoc.soap.endpoint=https://eos-moc-soap-srv-d1.apps.os-global.finods.com/services/"
set -xg springArgs "--datasource.url=$oracleDbUrl --datasource.user=$oracleDbUser --datasource.password=$oracleDbPassword --oracle.net.disableOob=true"

