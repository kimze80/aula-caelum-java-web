<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:import url="cabecalho.jsp" />
	
	
	<table>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}<td/>
				<td>
					<c:choose>
						<c:when test="${not empty contato.email }">
							<a href="mailto: ${contato.email}">${contato.email}</a>
						</c:when>
						
						<c:otherwise>
							Email não informado
						</c:otherwise>
					</c:choose>
				<td/>
				<td>${contato.endereco}<td/>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /><td/>
				<td> <a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a> </td>
			<tr/>	
		
		</c:forEach>
	</table>
	
	<c:import url="rodape.jsp" />

</body>
</html>