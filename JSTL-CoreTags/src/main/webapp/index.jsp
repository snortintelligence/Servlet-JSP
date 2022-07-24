<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Core Tags</title>
</head>
<body>


	<%
	String msg = "";
	float exp = 34.09f;
	int exps = 3445;

	String[] name = { "Aman", "Sumit", "Mukesh", "Mausuf" };

	List<Character> alpha = new ArrayList<>();
	alpha.add('A');
	alpha.add('E');
	alpha.add('i');
	alpha.add('o');
	alpha.add('U');
	%>
	<!-- core:out is used to print data/value -->
	Message :
	<core:out value="${'Hi there!, How r u?'}"></core:out>

	<!-- set tag : is used set value into variable either with scope or 
	no scope then reuse it somewhere -->
	<core:set var="expenses" scope="session" value="${8*2}"></core:set>
	<br> expenses :
	<core:out value="${expenses-4}"></core:out>

	<br>
	<a href="ReadValue.jsp">go to second page</a>
	<br>
	<core:forEach var="count" begin="10" end="20">
		count <core:out value="${count}" />
		<br>
	</core:forEach>

	<br>
	<!-- Read List values -->
	
	<core:forEach var="n" begin="0" end="<%=name.length%>"
		items="<%=name%>">
		<core:out value="${n}"></core:out>
	</core:forEach>
	<br>
	<core:forEach var="a" items="<%=alpha%>">
		<core:out value="${a}"></core:out>
	</core:forEach>
	
	<br>
	<h3>core:if</h3>
	<core:if test="${10>3}">
		<core:out value="${'10 is greater than 3'}" />
	</core:if>	
	<br>
	<!-- switch : choose | when | otherwise -->
	<core:set  var="withdarwAmount" value="4500" />
	<core:set  var="balance" value="10000" />
	<core:choose>
		<core:when test="${45000>10000}">
			Balance is too low
		</core:when>
		<core:when test="${4500<10000}">
			Collect your cash
		</core:when> 
		<core:otherwise>
			Sorry Transaction cannot be proceed now!
		</core:otherwise>
	</core:choose>

</body>
</html>