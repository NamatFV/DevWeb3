
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peso</title>
    </head>
    <body>
        <h1>Calcule o seu peso 🙈️</h1>
        <form action="#">
            <label>
                Informe seu peso em kg: <input type="text" name="n_peso" required>
            </label>
            
            <input type="submit" value="Calcular novo peso">
            
            <h2>
                <%
                    String pesoAtual = request.getParameter("n_peso");
                    double pesoEngordar = pesoAtual * 1.15; //100% + 15% = 115% = 1.15
                    double pesoEmagrecer = pesoAtual * 0.80; //100% - 20% = 80% = 0.80
                    
                    
                %>
            </h2>
        </form>
    </body>
</html>
