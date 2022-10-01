# Start with the official Tomcat container; using version 9 here as
# was recommended in class.
FROM tomcat:9

# Install any webapps from the current directory into the container.
COPY webapps /usr/local/tomcat/webapps

# Install and run a script for compiling webapps and running Tomcat.
COPY container_entry.sh /container_entry.sh
CMD /container_entry.sh
