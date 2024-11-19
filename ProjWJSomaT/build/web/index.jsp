
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma</title>
    </head>
    <body>
        <h1>SO(➕)MA</h1>
        <form action="#">
            <label>
                Valor 1: <input type="text" name="n_v1">
            </label>
            <label>
                Valor 2: <input type="text" name="n_v2">
            </label>
            
            <input type="submit" value="Calcular">
            
            <h2>
                <%
                    String v1 = request.getParameter("n_v1"); //número inteiro (int)
                    String v2 = request.getParameter("n_v2"); //número real (double)
                    
                    if (v1 == null || v2 == null || v1.isEmpty() || v2.isEmpty()) {
                        out.print("Preencha todos os campos");
                    } else{
                        double soma = Integer.parseInt(v1) + Double.parseDouble(v2);
                        out.print(v1 + " + " + v2 + " = " + soma);
                    }
                %>
            </h2>
        </form>
    </body>
</html>
