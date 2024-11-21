<%@page import="br.edu.qi.model.dto.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista </title>
    </head>
    <body>
        <div>
            <%
               Contato objContato = new Contato(); //método construtor é capaz de criar um objeto da classe
               objContato.setNome(request.getParameter("n_nome"));
               objContato.setTelefone(request.getParameter("n_telefone"));
               objContato.setEmail(request.getParameter("n_email"));
            %>
            
            <%=
               objContato.toString()
            %>
        </div>
    </body>
</html>