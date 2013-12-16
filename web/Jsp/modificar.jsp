<%-- 
    Document   : modificar
    Created on : 16/12/2013, 03:56:43 PM
    Author     : aya
--%>

<%@page import="Bean.BeanProducto"%>
<%@page import="Gestor.ControlProducto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String context = request.getContextPath();
            ControlProducto control = new ControlProducto();
            List<BeanProducto> ls = control.getProductos();
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="<%=context%>/Css/style.css" rel="stylesheet" type="text/css">

        <script src="<%=context%>/Js/jquery.js" type="text/javascript"></script>
        <script src="<%=context%>/Js/javascript.js" type="text/javascript"></script>

        <title>Modificar producto</title>
    </head>
    <body>
        <form action="ServletModificar2" method="POST" name="form" id="form">
            <label>Modificar producto</label>
            <input name="producto" type="text" value="<%=session.getAttribute("nombre")%>"/><input type="submit" value="Modificar"/>
        </form>
    </body>
</html>
