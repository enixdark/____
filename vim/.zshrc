# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/cqshinn/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  docker
  tmux
  aws
  python
  history
)

source $ZSH/oh-my-zsh.sh

if [ -e ~/.fzf.zsh ]; then
     source ~/.fzf.zsh
fi 

# Load the Variables file
if [ -e ~/.zsh_files/variables.zsh ]; then
     source ~/.zsh_files/variables.zsh
fi 

# Load the Aliases file
if [ -e ~/.zsh_files/aliases.zsh ]; then
     source ~/.zsh_files/aliases.zsh
fi 

# Load the Functions file
if [ -e ~/.zsh_files/functions.zsh ]; then
     source ~/.zsh_files/functions.zsh
fi 


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export VISUAL="vim"

#export Kubernetes config with vagrant and some plugin vagant-paralles
#export VAGRANT_DEFAULT_PROVIDER=vagrant-parallels
export KUBERNETES_PROVIDER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox
#export VAGRANT_NO_PROXY=127.0.0.1
#export MASTER_IP=192.168.70.200
#export NODE_IP_BASE=192.168.70.201

#
#export VAGRANT_DEFAULT_PROVIDER=virtualbox
#export VAGRANT_DEFAULT_PROVIDER=parallels
#export mesos through compile to use lib
#export MESOS_NATIVE_LIBRARY=/usr/local/lib/libmesos.so

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/cqshinn/.sdkman"
#[[ -s "/home/cqshinn/.sdkman/bin/sdkman-init.sh" ]] && source "/home/cqshinn/.sdkman/bin/sdkman-init.sh"
#use ierlang with notebook
#export ERL_LIBS=/usr/local/erlzmq2:$ERL_LIBS
#export IERLANG=/usr/local/ierlang
#export CAPSTAN_QEMU_PATH=/usr/bin
export BIN=.:~/bin
#export GO=/usr/local/godep/bin/
export GOROOT=/usr/local/go
export GOROOT_BOOTSTRAP=/usr/local/godep

export GOPATH=/usr/local/godep

#export LUA
#export MARATHON_HOME=/usr/local/marathon
export CHRONOS_HOME=/usr/local/chronos
export STORM_HOME=/usr/local/storm
export RABBITMQ_HOME=/usr/local/rabbitmq
export CASSANDRA_HOME=/usr/local/cassandra
export ELASTICKSEARCH_HOME=/usr/local/elasticksearch
export KIBANA_HOME=/usr/local/kibana
export LOGSTASH_HOME=/usr/local/logstash
export HADOOP_HOME=/usr/local/hadoop
#export HADOOP_HOME=~/hadoop-2.5.0-cdh5.2.0 #export hadoop path with cloudera 5.2 to use mesos
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_73/
export SPARK_HOME=/usr/local/spark
#export NODE_HOME=/usr/local/nodejs
export SUBL=~/sublime_text
export MONGODB_HOME=/usr/local/mongodb
export TYPESAFE=~/typesafe
#export MAVEN=/usr/local/maven
export NEO4j_HOME=/usr/local/neo4j
#export GROOVY_HOME=/usr/local/groovy
export TITAN_HOME=/usr/local/titandb
#export _JAVA_OPTIONS '-Duser.home=/usr/home/cqshinn'
#export ELIXIR_HOME=/usr/local/elixir
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=/usr/local/hadoop/lib/native"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native:/usr/local/lib:/usr/lib:.
#export CATALINA_OPTS="$CATALINA_OPTS -agentlib:TakipiAgent"
#export TOMCAT_HOME=/usr/local/tomcat
export JENAROOT=/usr/local/jena/jena
#export FUSEKI_HOME=/usr/local/jena/fuseki
#export UIMA_HOME=/usr/local/uima_
#export REBAR=/usr/local/rebar
#export OPENNLP=/usr/local/opennlp
#export SBT=~/sbt/bin
export FLUME_HOME=/usr/local/flume
export GATE_HOME=''#~/GATE
export PATH=$PATH:~/.cabal/bin
export ZOOKEEPER_HOME=/usr/local/zookeeper
export KAFKA_HOME=/usr/local/kafka
export CLOJURE_HOME=/usr/local/clojure
#export RUST_HOME=/usr/local/rust/rustc
export NVM_DIR=~/.nvm
export CRATE=/usr/local/crate
#export HADOOP_CLASSPATH=./share/hadoop/yarn/test/hadoop-yarn-server-tests-2.2.0-tests.jar 
#./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-client-jobclient-2.2.0-tests.jar  minicluster
#export JAVA_OPTS="-agentlib:TakipiAgent -Xmx128m -XX:+UseConcMarkSweepGC"
#export JAVA_OPTS="$JAVA_OPTS -agentlib:TakipiAgent"
alias gremlin=$TITAN_HOME/bin/gremlin.sh
export PATH=$PATH:$SUBL:$SPARK_HOME/bin:$HADOOP_HOME/bin:$ELASTICKSEARCH_HOME/bin:$RABBITMQ_HOME/sbin:$CASSANDRA_HOME/bin:$MONGODB_HOME/bin:$TYPESAFE:$SBT:$NEO4J_HOME/bin:$TITAN_HOME/bin:$ELIXIR_HOME/bin:$REBAR:$TOMCAT_HOME/bin:$JENAROOT/bin:$GATE_HOME/bin:$KAFKA_HOME/bin:$ZOOKEEPER_HOME/bin:$CLOJURE_HOME/bin:$RUST_HOME/bin:$BIN:$KIBANA_HOME/bin:$LOGSTASH_HOME/bin:$STORM_HOME/bin:$CHRONOS_BIN:$ERL_LIBS:$IERLANG:$GO:$FLUME_HOME/bin:$NVM_DIR:$GOROOT_BOOTSTRAP/bin:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/home/cqshinn/.minimesos/bin
export PATH=$PATH:/home/cqshinn/.cache/rebar3/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export PATH="$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:$PATH"

#source ~/.sdkman/candidates/springboot/current/shell-completion/bash/spring
# To avoid keyboard in terminate with enter such ^M
stty icrnl

# The next line updates PATH for the Google Cloud SDK.
#source '/home/cqshinn/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/home/cqshinn/google-cloud-sdk/completion.bash.inc'
#export PATH=/opt/chef/embedded/bin:
#export PATH=/home/cqshinn/.rvm/gems/ruby-2.3.0/bin:/home/cqshinn/.rvm/gems/ruby-2.3.0@global/bin:/home/cqshinn/.rvm/rubies/ruby-2.3.0/bin:/home/cqshinn/.rvm/bin:/home/cqshinn/google-cloud-sdk/bin:/home/cqshinn/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:/home/cqshinn/.opam/4.02.1/bin:/home/cqshinn/bin:/home/cqshinn/google-cloud-sdk/bin:/home/cqshinn/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:/home/cqshinn/.sdkman/candidates/vertx/current/bin:/home/cqshinn/.sdkman/candidates/springboot/current/bin:/home/cqshinn/.sdkman/candidates/scala/current/bin:/home/cqshinn/.sdkman/candidates/sbt/current/bin:/home/cqshinn/.sdkman/candidates/kotlin/current/bin:/home/cqshinn/.sdkman/candidates/groovyserv/current/bin:/home/cqshinn/.sdkman/candidates/groovy/current/bin:/home/cqshinn/.sdkman/candidates/grails/current/bin:/home/cqshinn/.sdkman/candidates/gradle/current/bin:/home/cqshinn/.sdkman/candidates/ceylon/current/bin:/home/cqshinn/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/puppetlabs/bin:/opt/PostgreSQL/9.5/bin:/home/cqshinn/.cabal/bin:/home/cqshinn/sublime_text:/usr/local/spark/bin:/usr/local/hadoop/bin:/usr/local/elasticksearch/bin:/usr/local/rabbitmq/sbin:/usr/local/cassandra/bin:/usr/local/mongodb/bin:/home/cqshinn/typesafe::/bin:/usr/local/titandb/bin:/usr/local/elixir/bin:/usr/local/rebar/rebar:/bin:/usr/local/jena/jena/bin:#~/GATE/bin:/usr/local/kafka/bin:/usr/local/zookeeper/bin:/usr/local/clojure/bin:/usr/local/rust/rustc/bin:.:/home/cqshinn/bin:/usr/local/kibana/bin:/usr/local/logstash/bin:/usr/local/storm/bin:/usr/local/godep/bin:/usr/local/go/bin::::/usr/local/godep/bin:/usr/local/flume/bin:/home/cqshinn/.minimesos/bin:/snap/bin:/opt/PostgreSQL/9.5/bin:/home/cqshinn/.cabal/bin:/home/cqshinn/sublime_text:/usr/local/nodejs/bin:/usr/local/spark/bin:/usr/local/hadoop/bin:/usr/local/elasticksearch/bin:/usr/local/rabbitmq/sbin:/usr/local/cassandra/bin:/usr/local/mongodb/bin:/home/cqshinn/typesafe::/bin:/usr/local/titandb/bin:/usr/local/elixir/bin:/usr/local/rebar/rebar:/bin:/usr/local/jena/jena/bin:#~/GATE/bin:/usr/local/kafka/bin:/usr/local/zookeeper/bin:/usr/local/clojure/bin:/usr/local/rust/rustc/bin:.:/home/cqshinn/bin:/usr/local/kibana/bin:/usr/local/logstash/bin:/usr/local/storm/bin:/usr/local/godep/bin:/usr/local/go/bin::::/usr/local/godep/bin:/usr/local/flume/bin:/home/cqshinn/.minimesos/bin
#/usr/local/nodejs/bin
export PATH=$PATH:$ELASTICSEARCH/bin:$LOGSTASH/bin:$KIBANA/bin:$CRATE/bin:$NEO4J/bin:$CASSANDRA/bin
export NVM_DIR="/home/cqshinn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#[[ -s "/home/cqshinn/.gvm/scripts/gvm" ]] && source "/home/cqshinn/.gvm/scripts/gvm"
source $HOME/.cargo/env
#source ~/.rsvm/rsvm.sh
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export CHECKPOINT_DISABLE=1
export KUBECONFIG=/etc/kubernetes/kubelet.conf
#export GOROOT_BOOSTRAP=~/.gvm/gos/go1.9
#source $HOME/.kiex/elixirs/elixir-1.4.1.env

export PATH="$PATH:$HOME/.rvm/bin:$HOME/.kiex/bin" # Add RVM to PATH for scripting
export FISSION_ROUTER=$(minikube ip):31314
export FISSION_URL=http://$(minikube ip):31313
export JAVA_HOME=/usr/lib/jvm/java-9-oracle
export GOROOT=/home/cqshinn/.gvm/gos/go1.9
export GOPATH=/home/cqshinn/.gvm/pkgsets/go1.9/global
export PATH="$PATH:$GOROOT:$GOPATH"
#export DOCKER_HOST=tcp://127.0.0.1:4243
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm" ]]
alias ll='ls -lah'
alias ll='ls -lah'
alias start='service mysql start'
alias stop='service mysql stop'
alias sql='mysql -uroot'
alias my='vi /etc/mysql/my.cnf'
source $HOME/.kiex/elixirs/elixir-1.5.1.env
source ~/.rvm/scripts/rvm
#. "/home/cqshinn/.acme.sh/acme.sh.env"
source $HOME/.kiex/elixirs/elixir-1.6.0.env
#
MECAB_PATH=/usr/lib/libmecab.so.2
#gvm use go1.9

eval "$(stack --bash-completion-script stack)"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/cqshinn/google-cloud-sdk/path.zsh.inc' ]; then source '/home/cqshinn/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/cqshinn/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/cqshinn/google-cloud-sdk/completion.zsh.inc'; fi
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH=$PATH:/usr/local/go/bin
#export GOROOT=$HOME/go
#export PATH=$PATH:$GOROOT/bin
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
eval "$(goenv init -)"
goenv rehash

