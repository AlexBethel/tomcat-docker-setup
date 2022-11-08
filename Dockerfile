# Start with the official Tomcat container; using version 9 here as
# was recommended in class.
FROM tomcat:9

# Install any webapps from the current directory into the container.
COPY webapps /usr/local/tomcat/webapps

# Compile any webapps.
RUN find /usr/local/tomcat/webapps -name '*.java' | xargs \
    javac -cp /usr/local/tomcat/lib/servlet-api.jar -Werror
