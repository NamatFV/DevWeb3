
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                int latas = Integer.parseInt(request.getParameter("n_lata"));
                int refri600 = Integer.parseInt(request.getParameter("n_refri600"));
                int refri2L = Integer.parseInt(request.getParameter("n_refri2"));
                
                double totalLitros = latas * 0.35 + refri600 * 0.6 + refri2L * 2;
                double faturamento = latas * 1.2 + refri600 * 1.8 + refri2L * 2.80;
            %>
            <%=
                "<h1>Relatório de vendas</h1>" +
                "<br>Quantidade vendidas" +
                "<br>Latas: " + latas +
                "<br>Refri 600ml: " + refri600 +
                "<br>Refri e litros: " + refri2L +
                "<br>Total de litros vendidos: " + totalLitros + "litros" +
                "<br>Faturamento total de R$ " + faturamento    
            %>
        </div>
    </body>
</html>
