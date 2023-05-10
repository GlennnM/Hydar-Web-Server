<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--We can include session attributes--%>
<%
session.setAttribute("hello","hydar");
response.sendRedirect(response.encodeURL("example.jsp"));
%>
