
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                String nome = request.getParameter("n_nome");
                String telefone = request.getParameter("n_tel");
                String email = request.getParameter("n_email");
            %>
            <%=
                "<h1>Dados do contato</h1>" +
                "<br>Nome: " + nome +
                "<br>Telefone: " + telefone +
                "<br>E-mail: " + email
            %>
        </div>
    </body>
</html>
