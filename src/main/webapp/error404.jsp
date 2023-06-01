<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}" scope="session" />

<fmt:setLocale value="${language}" />

<fmt:setBundle basename="bundle.language" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><fmt:message key="errorTitle" /></title>
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	</head>
	<body>
		<img src="assets/images/error404.jpg" width="480" height="380">
		<h1 style="color:red; font-size:24px;"><fmt:message key="error404" /></h1>
		<br/>
		<p><b><fmt:message key="uri" /></b> ${pageContext.request.scheme}://${header.host}${pageContext.errorData.requestURI}</p>   	
		<button onclick="history.back()" class="w3-button w3-black w3-section"><fmt:message key="backButton" /></button>
		<button onclick="location.href='http://localhost:8080/ficheros/prueba.jsp'" class="w3-button w3-black w3-section"><fmt:message key="mainPage" /></button>
	
	</body>
</html>