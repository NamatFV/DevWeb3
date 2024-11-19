
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bhaskara</title>
    </head>
    <body>
        <h1>Descubra X</h1>
        <form>
            <label>
                Informe A: <input  type="text" name="n_a">
            </label>
            <label>
                Informe B: <input  type="text" name="n_b">
            </label>
            <label>
                Informe C: <input  type="text" name="n_c">
            </label>
            
            <input type="submit" value="Calcular X">
            
            <h2>
                <%
                    String a = request.getParameter("n_a");
                    String b = request.getParameter("n_b");
                    String c = request.getParameter("n_c");
                    
                    if(a == null || b == null || c == null || a.isEmpty() || b.isEmpty() || c.isEmpty()){
                        out.print("Preencha os campos! <p></p> Apenas números inteiros!");
                    } else{
                        double delta = (Double.parseDouble(b)*Double.parseDouble(b)) - (4 * Double.parseDouble(a)*Double.parseDouble(c));
                        out.print("Delta = " + delta);
                        double x1 = (- Double.parseDouble(b) + Math.sqrt(delta)) / (2 * Double.parseDouble(a));
                        double x2 = (- Double.parseDouble(b) - Math.sqrt(delta)) / (2 * Double.parseDouble(a));
                        out.print("<p></p>O valor de x1 é: " + x1 + "<p></p> O valor de x2 é: " + x2);
                    }
                %>
            </h2>
        </form>
    </body>
</html>
