<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}" scope="session" />

<fmt:setLocale value="${language}" />

<fmt:setBundle basename="bundle.language" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="title" /></title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">  
<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
	<body>
	<!-- Start Content -->
	</br>
	<jsp:include page="cabecera.jsp" flush="true"></jsp:include>
		
		<!-- Contenido de sección -->
		<c:import var="varCorpo" url="${param.pCorpo}" charEncoding="UTF-8" />
		
		<c:out value="${varCorpo}" escapeXml="false"/>
		</br>
		<center>
		    <div>
				<img width="60%" height="520 px" padding="80%" src="assets/images/gestionar_almacenes.jpg">
	    	</div>
    	</center>
		</br>
	
	<!-- End Content -->
	
	<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>