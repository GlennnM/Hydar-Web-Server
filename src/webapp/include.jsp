<%@page import="java.util.stream.IntStream"%>
<%--
A declaration can declare methods and embedded classes outside the JSP service method.
--%>
<%!
static int includedFunction(int i){
	return IntStream.range(0,i).sum();
}

%>
<%out.print("include.jsp:: thing was included!");%>
<br>