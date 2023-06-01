<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Errors page</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<h1>ERROR PAGE</h1>
<br/>
<br/>
<h3>errr_msg: <%=null != request.getAttribute("err_msg") ? request.getAttribute("err_msg"):""%></h3>

<h3>errr_msg jstl: ${null!=err_msg ? err_msg:""}</h3>

<h3>exception: <%=null != exception ? exception.getLocalizedMessage():""%></h3>

<%
Integer statusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");
String servletName = (String) request.getAttribute("jakarta.servlet.error.servlet_name");
Throwable throwable = (Throwable) request.getAttribute("jakarta.servlet.error.exception");
String requestUri = (String) request.getAttribute("jakarta.servlet.error.request_uri");
%>

<h3>statusCode: <%=null != statusCode ? statusCode :"" %></h3>

<button onclick="history.back()" class="w3-button w3-black w3-section">Volver a atrás</button>

</body>
</html>