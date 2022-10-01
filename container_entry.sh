#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Build any Java classes in the `webapps' directory.
for FILE in $(find /usr/local/tomcat/webapps | grep '\.java$'); do
    javac -cp /usr/local/tomcat/lib/servlet-api.jar "$FILE"
done

# Start Tomcat.
./bin/catalina.sh run
