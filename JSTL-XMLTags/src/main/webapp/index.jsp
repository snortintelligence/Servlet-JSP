<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="xm"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML Tags</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- XML tags : XML document / XML data processing -->
	<!--  Step 1. load xml document into this page -->
	<core:import url="employees.xml" var="empXmlDoc" />

	<!-- parse document  -->
	<xm:parse xml="${empXmlDoc}" var="emp" />

	<!-- Step 2. List all details of each employee -->
	<div class="container mt-3">
		<h2>Dark Striped Table</h2>
		<p>Combine .table-dark and .table-striped to create a dark,
			striped table:</p>
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Job</th>
					<th>Salary</th>
					<th>Rating</th>
				</tr>
			</thead>
			<tbody>
				<xm:forEach select="$emp/employees/employee">
					<tr>
						<td><xm:out select="id" /></td>
						<td><xm:out select="name" /></td>
						<td><xm:out select="job" /></td>
						<td><xm:out select="salary" /></td>
						<xm:if select="salary > 15000">
							<td>**</td>
						</xm:if>
					</tr>
				</xm:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>