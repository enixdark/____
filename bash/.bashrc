# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export RABBITMQ_HOME=/usr/local/rabbitmq
export CASSANDRA_HOME=/usr/local/cassandra
export ELASTICKSEARCH_HOME=/usr/local/elasticksearch
export HADOOP_HOME=/usr/local/hadoop/
export JAVA_HOME=/usr/lib64/jvm/jdk1.8.0_51/
export SPARK_HOME=/usr/local/spark
export NODE_HOME=/usr/local/node
export SUBL=~/sublime
export MONGODB_HOME=/usr/local/mongodb
export TYPESAFE=~/typesafe/bin
export MAVEN=/usr/local/maven
export NEO4j_HOME=/usr/local/neo4j
export GROOVY_HOME=/usr/local/groovy
export TITAN_HOME=/usr/local/titandb
#export _JAVA_OPTIONS '-Duser.home=/usr/home/cqshinn'
export ELIXIR_HOME=/usr/local/elixir
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=/usr/local/hadoop/lib/native"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/hadoop/lib/native
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib:.
export UIMA_HOME=/usr/local/uima_
export REBAR=/usr/local/rebar/rebar
export OPENNLP=/usr/local/opennlp
export SBT=~/sbt/bin
alias gremlin=$TITAN_HOME/bin/gremlin.sh
export PATH=$PATH:$SUBL:$NODE_HOME/bin:$SPARK_HOME/bin:$HADOOP_HOME/bin:$ELASTICKSEARCH_HOME/bin:$RABBITMQ_HOME/sbin:$CASSANDRA_HOME/bin:$MONGODB_HOME/bin:$TYPESAFE:$SBT:$MAVEN/bin:$NEO4J_HOME/bin:$GROOVY_HOME/bin:$TITAN_HOME/bin:$ELIXIR_HOME/bin:$UIMA_HOME/bin:$REBAR:$OPENNLP/bin
export PATH=".:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
