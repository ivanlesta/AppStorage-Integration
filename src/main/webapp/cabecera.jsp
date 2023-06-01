<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ taglib uri=  "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}" scope="session" />

<fmt:setLocale value="${language}" />

<fmt:setBundle basename="bundle.language" />

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
	<div class="w3-top w3-bar w3-black">
	
		<a href="${pageContext.request.contextPath}/ListClientes" class="w3-bar-item w3-button"><fmt:message key="listadoClientes"/></a>
		
		<a href="${pageContext.request.contextPath}/ListaVendedor" class="w3-bar-item w3-button"><fmt:message key="listadoVendedores"/></a>
	
		<a href="${pageContext.request.contextPath}/ListaCompras" class="w3-bar-item w3-button"><fmt:message key="listadoCompras"/></a>
	
		<a href="${pageContext.request.contextPath}/ListaProductos" class="w3-bar-item w3-button"><fmt:message key="listadoProductos"/></a>
		
		<a href="${pageContext.request.contextPath}/contacto.jsp" class="w3-bar-item w3-button"><fmt:message key="contacto" /></a>
		
		<form>

			<select id="language" name="language" onchange="submit()" class="w3-bar-item w3-button">
					
				<option value="ar" ${language == 'ar' ? 'selected' : ''}><fmt:message key="arabe"/></option>
				
				<option value="fr" ${language == 'fr' ? 'selected' : ''}><fmt:message key="frances"/></option>
				
				<option value="en_UK" ${language == 'en_UK' ? 'selected' : ''}><fmt:message key="ingles"/></option>
				
				<option value="es" ${language == 'es' ? 'selected' : ''}><fmt:message key="español"/></option>
			
			</select>&nbsp;&nbsp;&nbsp; <b ${(language == 'ar') ?'dir="rtl" align="right" lang="ar"':''} class="w3-bar-item w3-button"><fmt:message key="keyMsgi18n" /></b><!-- dir="rtl" lang="ar" -->

		</form>
	
	</div>
	<h3 class="w3-border-bottom w3-border-light-grey w3-padding-16"><fmt:message key="appAlmacen"/></h3>