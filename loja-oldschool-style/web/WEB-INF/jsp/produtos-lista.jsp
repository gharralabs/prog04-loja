<%@taglib  prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.List"%>
<%@page import="br.pucpr.prog4.lojaoldschool.models.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTA DE PRODUTOS</h1>
        
        <c:forEach var="produto"
                   items="${produtos}">
            
            <div>
                <p>${produto.nome}
                <a href="produto-detalhe?id=${produto.id}">
                    <img src="../imagens/0${produto.id}.jpg" 
                         alt="produto ${produto.id}" />
                </a>
                <p>R$ ${produto.preço}</p>
            </div>
            
        </c:forEach>
        
        
        <%
         List<Produto> produtos;
         produtos = (List<Produto>) request.getAttribute("produtos");
         
         for(Produto produto : produtos )
         {
             %>
             <div>
                <p><%=produto.getNome()%></p>
                <a href="produto-detalhe?id=<%=produto.getId()%>">
                    <img src="imagens/0<%=produto.getId()%>.jpg" 
                         alt="produto <%=produto.getId()%>" />
                </a>
                <p>R$ <%=produto.getPreço()%></p>
            </div>
             <%
         }
        %>
        
    </body>
</html>
