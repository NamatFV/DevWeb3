
<%@page import="org.w3c.dom.css.RGBColor"%>
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
                double a = Double.parseDouble(request.getParameter("n_a"));
                double b = Double.parseDouble(request.getParameter("n_b"));
                double c = Double.parseDouble(request.getParameter("n_c"));
                
                double delta = Math.sqrt(b*b - 4*a*c);
                
                double x1 = (-b + delta) / (2*a);
                double x2 = (-b - delta) / (2*a);
            %>
            <%=//comando para saída, substitui o out.print
                "<h1>Resultado da Bhaskara</h1>"
                + "X' = " + x1
                + "<br>X'' = " + x2
            %>
        </div>
    </body>
</html>
