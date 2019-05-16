<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TAREA 5 NCAPAS</title>
</head>
<body>
	
	<h3>Busqueda de estudiantes</h3>
	
	<form:form  action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="student">
	
	    <label>Ingrese Id Del Estudiante: </label>
		<form:input type="number" name="cStudent" path="cStudent"/>
		
		<input type="submit" value="Buscar Estudiante">
	</form:form>
	
</body>
</html>