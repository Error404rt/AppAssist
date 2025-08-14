@rem
@rem Copyright 2017 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@echo off

setlocal

rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=-Xmx64m -Xms64m

set APP_HOME=%~dp0

rem Find java.exe
if defined JAVA_HOME (
  set JAVA_EXE="%JAVA_HOME%\bin\java.exe"
) else (
  set JAVA_EXE=java.exe
)

if not exist %JAVA_EXE% (
  for %%i in (%JAVA_EXE%) do (
    if not exist %%~$PATH:i (
      echo.ERROR: JAVA_HOME is not set and no 'java.exe' command can be found in your PATH.
      echo.Please set the JAVA_HOME environment variable in your shell to the correct Java installation directory or add 'java.exe' to your PATH.
      goto :eof
    )
  )
)

rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*


