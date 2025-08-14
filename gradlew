#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

APP_HOME=`dirname "$0"`

# OS specific support (must be 'true' or 'false')
cygwin=false
darwin=false
os400=false
case "`uname`" in
  CYGWIN*) cygwin=true;;
  Darwin*) darwin=true;;
  OS400*) os400=true;;
esac

# For Cygwin, ensure paths are in UNIX format before anything else
if $cygwin; then
  [ -n "$APP_HOME" ] && APP_HOME=`cygpath --unix "$APP_HOME"`
fi

# Resolve links - $0 may be a softlink
PRG="$0"

while [ -h "$PRG" ]; do
  link=`ls -ld "$PRG"`
  PRG=`expr "$link" : '.*-> \(.*\)$'`
  if expr "$PRG" : '/.*' > /dev/null; then
    PRG="$PRG"
  else
    PRG="`dirname "$link"`/$PRG"
  fi
done

APP_HOME=`dirname "$PRG"`

if [ -z "$APP_HOME" ] ; then
  APP_HOME="."
fi

# strip trailing slashes
APP_HOME=`echo $APP_HOME | sed 's/\\/$//'`

APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
  if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
    # IBM's JDK on AIX uses different locations for the executables
    JAVA_CMD="$JAVA_HOME/jre/sh/java"
  else
    JAVA_CMD="$JAVA_HOME/bin/java"
  fi
  if [ ! -x "$JAVA_CMD" ] ; then
    die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME environment variable in your shell to the correct Java installation directory."
  fi
else
  JAVA_CMD="java"
  which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command can be found in your PATH.

Please set the JAVA_HOME environment variable in your shell to the correct Java installation directory or add 'java' to your PATH."
fi

# Increase the maximum file descriptors if we can
if [ "`uname`" = "Darwin" ] ; then
    ulimit -n 1024
fi

# For Cygwin, switch paths to Windows format before running java
if $cygwin; then
  [ -n "$APP_HOME" ] && APP_HOME=`cygpath --windows "$APP_HOME"`
  [ -n "$JAVA_HOME" ] && JAVA_HOME=`cygpath --windows "$JAVA_HOME"`
  [ -n "$CLASSPATH" ] && CLASSPATH=`cygpath --path --windows "$CLASSPATH"`
fi

# Execute Gradle
exec "$JAVA_CMD" \
  ${DEFAULT_JVM_OPTS} \
  ${JAVA_OPTS} \
  ${GRADLE_OPTS} \
  -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"


