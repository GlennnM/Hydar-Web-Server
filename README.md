<h1>Hydar Web Server</h1>
<img src='https://user-images.githubusercontent.com/77253453/233814930-bd1c03e1-a87d-422b-8869-ff4109941307.png' />
<i>The <b>hydar</b> web server is a custom web server and Java EE implementation developed for embedding in <a href=https://hydar.xyz>hydar.xyz</a>, another open source project. Please visit the site or view its repository for more information.</i><br><br>
Hydar consists of many independent components, as shown in <b>figure 1</b>. The first layer is a custom implementation of an HTTP file server, including support for various HTTP extensions such as caching, partial downloads, compression, and a custom implementation of <b>HTTP/2.0</b>, supporting <b>server-sided events</b>. It also fully supports encrypted sessions using the builtin Java implementation of TLSv1.3. Under default configurations, files will be reloaded periodically through a low overhead watch service, and static files under 1MB will be cached in memory.
<br><br>
The next layer is the <b>custom JSP compiler</b> and Java EE implementation for servlet code, built upon the Hydar HTTP server, allowing for dynamic webapps which are generally compatible with other servlet containers. The servlet code may be compiled completely in memory and no reflection is needed for responding to the requests after compilation. This additionally allows for <b>authenticated WebSocket sessions</b> that can dynamically dispatch servlet requests, and support for sessions in environments without cookies. For a full list of the implemented Java EE APIs and how to set up your own HydarEE app, see the javadoc(soon)
<br><br>
This package also includes custom <b>JDBC connection and statement pooling</b>, which ensures prepared statements are closed properly and connections are reused, and is loaded through JNDI similarly to in other servlet containers(xyz.hydar.ee.HydarDataSource). Finally, Hydar can optionally <b>rate limit</b> expensive servlet code through the HydarLimiter API.
<br><br>

<h1>Building</h1>
Clone the repository and run compile_hydar.bat or compile_hydar.sh(JDK 17+ required). This will launch the example server on port 8080, and you can view its source in /src/webapp/, or configure it in hydar.properties. More documentation might be available eventually.<br>
There are no dependencies.<br>
