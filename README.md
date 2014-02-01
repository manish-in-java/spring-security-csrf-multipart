# Overview
[Spring Security](http://projects.spring.io/spring-security/) is a popular and
flexible Java based framework for securing all types of Java applications.  It is
particularly useful for web applications where role-based access controls need to be
enforced quite frequently and security is the at the forefront owing to the physical
separation between the client and the server.

[Cross-site request forgery (CSRF)](http://en.wikipedia.org/wiki/Cross-site_request_forgery)
is a class of security exploits targeted at web applications that allows unauthorized
and potentially malicious code to be run against a web application.  The malicious
code is typically run as a user that the application trusts without the actual user
being aware that the code is being executed against the application.  In a nutshell,
CSRF exploits the trust a web application has in a genuine application user known to the
application.

CSRF has been consistently recognized as one of the most common and damaging exploits
plaguing web applications by [The Open Web Application Security Project (OWASP)](https://www.owasp.org).
Although Spring Security has had a long and illustrious track record of securing Java
based web applications, it had lacked support for CSRF protection for a long time.
Spring Security 3.2.0 addressed this gap by offering several new features, one of them
being CSRF protection.  Spring Security's CSRF protection works by ensuring that HTML
forms used to submit information are submitted using the HTTP POST directive and include
a random but cryptographically secure secret without which the form content are
immediately rejected by the application.  This design ensures that users are able to
submit only those forms that have been loaded with their knowledge and only as POST
requests, preventing tampering during transit (provided HTTPS is in use).

Although Spring Security's CSRF protection works without a glitch for normal HTML forms,
it runs into issues when used with [multipart forms](http://www.w3.org/TR/html401/interact/forms.html#h-17.13.4.2)
commonly used in web applications for allowing users to upload files to the server.
This sample application presents a simple yet complete use case for enabling CSRF
protection offered by Spring Security 3.2.0+ in a web application, including support
for multipart forms.

# Running the application
The following pre-requisites are required to run this application:

1. JDK 6.0+
2. Apache Maven 3.0.4+

Once these are installed and the application code has been checked out or downloaded
from Git, the application can be run by issuing the following command:

    mvn clean package tomcat7:run

This will compile the application (after downloading all necessary libraries) and run
an embedded Tomcat instance on port 8080.  The application can then be accessed on
<http://localhost:8080> using any web browser.

# Testing the application
The application consists of a single page that allows users to upload a file from
their local filesystem to the server.  Choose a file and upload it.  If the file is
uploaded successfully and the name of the uploaded file is displayed in a message,
CSRF protection is working fine for the application.

# License
This sample application and its associated source code in its entirety is being made
available under the following licensing terms.

    Copyright (C) 2014

    Permission is hereby granted, free of charge, to any person obtaining a copy of
	this software and associated documentation files (the "Software"), to deal in the
	Software without restriction, including without limitation the rights to use, copy,
	modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
	and to permit persons to whom the Software is furnished to do so, subject to the
	following conditions:

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
	INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
	PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
	CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
	OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
