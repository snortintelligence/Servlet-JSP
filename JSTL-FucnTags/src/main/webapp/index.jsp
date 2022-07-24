<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fx"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Core Tags</title>
</head>
<body>

	<% 
	String data = "Aman, Sumit, Raj";
	%>

	<!-- Jstl functions tags  : used in String manipulations -->
	<core:set var="message"  value="Welcome in Java | JSP | Servlet Sessions" scope="session"/>
	Message  : <core:out value="${message}" /><br>
	Message Length : <core:out value="${fx:length(message) }" /><br>
	
	Message startsWith(message,'Welcome') : <core:out value="${fx:startsWith(message,'Welcome') }" /><br>

	<core:set  var="names" value="<%=data%>" />
	<core:set  var="eachValue" value="${fx:split(names, ',')}" />
	<core:set  var="nameList" value="${fx:join(eachValue,'*')}" />
	nameList : <core:out value="${nameList}" /><br>
	
	
</body>
</html>