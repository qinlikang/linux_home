# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export JAVA_HOME=/usr/lib/jvm/java-1.8.0
export JRE_HOME=/usr/lib/jvm/java-1.8.0/jre
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

#export CATALINA_HOME=/usr/local/tomcat-8.0.26
export CATALINA_HOME=/usr/local/tomcat-7.0.64
#export CATALINA_BASE=/usr/local/tomcat-8.0.26
export CATALINA_BASE=/usr/local/tomcat-7.0.64
