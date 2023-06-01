<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>    
<%@ taglib uri = "jakarta.tags.core" prefix = "c" %>
<!-- < uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> -->
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.lang.System" %>
<%@ page import="java.util.Vector" %>
<fmt:setBundle basename="bundle.fichero" />

<%    
/*
int m=5;
int x=2;
int resultadoDivision=m/x;

final String ROOT_FILE_PATH="C:\\jrep\\tmp\\listaFicheirosProbarApp";
File f=new File(ROOT_FILE_PATH);
File[] allSubFiles=f.listFiles();
pageContext.setAttribute("lFiles", allSubFiles);
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado de clientes</title>

<style>
/*
tr:nth-child(even) {
  background-color: #f2f2f2;
}
*/
</style>
</head>
<body>
	</br>
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Listado de clientes: "/></jsp:include>
	<br />&nbsp;
		<br />&nbsp;
		<table>
			<thead>
				<tr>
					<th class="w3-center">Clientes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${lClientes}" varStatus="loop" >
				<!--tr bgcolor="${(loop.count % 2 != 0) ? 'white':'gray'}" -->
					<tr >
						<td>${item}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>