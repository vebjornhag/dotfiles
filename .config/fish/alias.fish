# Aliases
alias e='exa --icons --git -laTL 1'

# Git
alias grbc='git rebase --continue'
alias gmt='git machete traverse'
alias gms='git machete traverse'
alias gm='git machete'

# Maven
alias mvnit="mvn clean install -Dintegration-test=true"
alias mvnp="mvn clean install -Dpackaging=true"
alias mvnitp="mvn clean install -Dpackaging=true -Dintegration-test=true"
alias mvnf='mvn install -DskipTests -pl \!(find *schemas -maxdepth 0)'

# Java
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java8oracle='export JAVA_HOME=$JAVA_8_HOME_ORACLE'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'
alias jk='export JAVA_HOME=$JAVA_17_HOME'

# Docker all
alias docker-open='open --background -a Docker'
alias docker-close='killall Docker'
alias docker-up='cd ~/workspace/ace-docker-compose-dev && docker compose up -d && cd -'
alias docker-down='cd ~/workspace/ace-docker-compose-dev && docker compose down && cd -'

# Docker containers
alias docker-restart-mocrest='cd ~/workspace/ace-docker-compose-dev && docker stop mocrest && docker compose up -d mocrest && cd -'
alias docker-restart-mocsoap='cd ~/workspace/ace-docker-compose-dev && docker stop mocsoap && docker compose up -d mocsoap && cd -'
alias docker-restart-mocaceapi='cd ~/workspace/ace-docker-compose-dev && docker stop mocaceapi && docker compose up -d mocaceapi && cd -'
alias docker-restart-mocrestcas='cd ~/workspace/ace-docker-compose-dev && docker stop mocrestcas && docker compose up -d mocrestcas && cd -'

# Set Oracle variables
function set-oracle-variables
	set -xg oracleDbUrl 'jdbc:oracle:thin:@dlt-exa853-scan.unix.cosng.net:1530/JNKT_202308151122_P8J536639VYQ16KV44ZD_PDB'
	set -xg oracleDbUser 'CLSCOREDATA'
	set -xg oracleDbPassword '2f6cf305bb680bf7'
	set -xg mvnProperties "-Ddb.url=$oracleDbUrl -Ddb.user=$oracleDbUser -Ddb.password=$oracleDbPassword -Doracle.net.disableOob=true"
	set -xg dockerProperties "-Doracle_url=$oracleDbUrl -Doracle_user=$oracleDbUser -Doracle_password=$oracleDbPassword"
	set -xg iacMigrationBatchProperties "-Ddb.url=$oracleDbUrl -Ddb.username=$oracleDbUser -Ddb.password=$oracleDbPassword -Doracle.net.disableOob=true"
	set -xg ddlProperties "-Ddb.url=$oracleDbUrl -Ddb.ddl.username=$oracleDbUser -Ddb.ddl.password=$oracleDbPassword -Doracle.net.disableOob=true"
end
