<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}" scope="session" />

<fmt:setLocale value="${language}" />

<fmt:setBundle basename="bundle.language" />

<footer class="w3-center"><fmt:message key="footer" /></footer>