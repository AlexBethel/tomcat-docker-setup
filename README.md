CSE321 Tomcat Docker setup
==========================

This is the configuration I'm using for running Apache Tomcat in
CSE321. To set it up, type `./run.sh` in the root directory; press
`C-c` to kill the server. By default, the server listens on port 8080
of the host machine, and has two web apps: one with the page
`/hello/hello.jsp` that calculates 2 + 2 server-side with JSP, and
another with `/alexApp/alex` that prints "Hello World" server-side.
