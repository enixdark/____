# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/cqshinn/.sdkman"
[[ -s "/home/cqshinn/.sdkman/bin/sdkman-init.sh" ]] && source "/home/cqshinn/.sdkman/bin/sdkman-init.sh"

#export CAPSTAN_QEMU_PATH=/usr/bin
export BIN=.:~/bin
export RABBITMQ_HOME=/usr/local/rabbitmq
export CASSANDRA_HOME=/usr/local/cassandra
export ELASTICKSEARCH_HOME=/usr/local/elasticksearch
export KIBANA_HOME=/usr/local/kibana
export LOGSTASH_HOME=/usr/local/logstash
export HADOOP_HOME=/usr/local/hadoop/
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_73/
export SPARK_HOME=/usr/local/spark
export NODE_HOME=/usr/local/nodejs
export SUBL=~/sublime_text
export MONGODB_HOME=/usr/local/mongodb
export TYPESAFE=~/typesafe
#export MAVEN=/usr/local/maven
export NEO4j_HOME=/usr/local/neo4j
#export GROOVY_HOME=/usr/local/groovy
export TITAN_HOME=/usr/local/titandb
#export _JAVA_OPTIONS '-Duser.home=/usr/home/cqshinn'
export ELIXIR_HOME=/usr/local/elixir
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=/usr/local/hadoop/lib/native"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/hadoop/lib/native
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib:.
#export CATALINA_OPTS="$CATALINA_OPTS -agentlib:TakipiAgent"
#export TOMCAT_HOME=/usr/local/tomcat
export JENAROOT=/usr/local/jena/jena
#export FUSEKI_HOME=/usr/local/jena/fuseki
#export UIMA_HOME=/usr/local/uima_
export REBAR=/usr/local/rebar/rebar
#export OPENNLP=/usr/local/opennlp
export SBT=~/sbt/bin

export GATE_HOME=''#~/GATE
export PATH=$PATH:~/.cabal/bin
export ZOOKEEPER_HOME=/usr/local/zookeeper
export KAFKA_HOME=/usr/local/kafka
export CLOJURE_HOME=/usr/local/clojure
export RUST_HOME=/usr/local/rust/rustc
#export HADOOP_CLASSPATH=./share/hadoop/yarn/test/hadoop-yarn-server-tests-2.2.0-tests.jar 
#./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-client-jobclient-2.2.0-tests.jar  minicluster
#export JAVA_OPTS="-agentlib:TakipiAgent -Xmx128m -XX:+UseConcMarkSweepGC"
#export JAVA_OPTS="$JAVA_OPTS -agentlib:TakipiAgent"
alias gremlin=$TITAN_HOME/bin/gremlin.sh
export PATH=$PATH:$SUBL:$NODE_HOME/bin:$SPARK_HOME/bin:$HADOOP_HOME/bin:$ELASTICKSEARCH_HOME/bin:$RABBITMQ_HOME/sbin:$CASSANDRA_HOME/bin:$MONGODB_HOME/bin:$TYPESAFE:$SBT:$NEO4J_HOME/bin:$TITAN_HOME/bin:$ELIXIR_HOME/bin:$REBAR:$TOMCAT_HOME/bin:$JENAROOT/bin:$GATE_HOME/bin:$KAFKA_HOME/bin:$ZOOKEEPER_HOME/bin:$CLOJURE_HOME/bin:$RUST_HOME/bin:$BIN:$KIBANA_HOME/bin:$LOGSTASH_HOMe/bin









export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:$PATH"
source ~/.rvm/scripts/rvm
