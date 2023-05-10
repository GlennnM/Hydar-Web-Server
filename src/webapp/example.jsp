<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--This is a comment--%>
<%@ include file="include.jsp"%>
<%--include file allows us to use any declarations from other files--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hydar</title>
<link rel="shorcut icon" href="favicon.ico"/>
</head> 
<body>
<%
if(session.getAttribute("hello")!=null){
	out.print("Attribute 'hello':"+session.getAttribute("hello"));
	%><br><%
}
for(int i=0;i<10;i++){
	%>
	<%--JSP expressions(%=) evaluate and print a Java expression--%>
	example.jsp:sum(0...<%=i%>) is <%= includedFunction(i) %> 
	<br>
	<%
}
%> 
<a href="session.jsp">session</a>
<br>
<script>
//Client code for sse.jsp
const evtSource = new EventSource("/SSE.jsp");
evtSource.onmessage = (event) => {
  document.body.innerHTML+="example.jsp:Message received from sse.jsp!<br>";
}
</script>
</body>
</html>