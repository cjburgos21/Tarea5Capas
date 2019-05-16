<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TAREA 5 NCAPAS</title>
</head>
<body>

	<h3>${message}</h3>

	<table>
		<tr>
			<th>Nombre</th>
			<th>Apellido </th>
			<th>Edad</th>
			<th>Estado</th>
		</tr>
			<c:forEach items="${student}" var="student">
				<tr>
					<td>${student.sName}</td>
					<td>${student.lName}</td>
					<td>${student.sAge}</td>
					<td>${student.activoDelegate}</td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>