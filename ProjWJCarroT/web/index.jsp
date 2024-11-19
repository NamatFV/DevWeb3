
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carro</title>
    </head>
    <body>
        <h1>Combustível ⛽</h1>
        <form action="#">
            <label>
                Preço do combustível: <input type="text" name="n_precoC">
            </label>
            <label>
                Quilômetros por litro: <input type="text" name="n_kmPorL">
            </label>
            <label>
                Distância desejada: <input type="text" name="n_dist">
            </label>
            
            <input type="submit" value="Calcular gasto">
            
            <h2>
                <%
                    String preco = request.getParameter("n_precoC");
                    String km = request.getParameter("n_kmPorL");
                    String dist = request.getParameter("n_dist");
                    
                    if (preco == null || km == null ||  dist == null || preco.isEmpty() || km.isEmpty() || dist.isEmpty()){
                        out.print("Preencha todos os campos");
                    } else{
                        double litros = Double.parseDouble(dist) / Double.parseDouble(km);
                        double gasto = litros * Double.parseDouble(preco);
                        out.print("O preço final será R$" + gasto +
                        " <p></p> e serão gastos " + litros + " litros de combustível");
                    }    
                %>
            </h2>
        </form>
    </body>
</html>
