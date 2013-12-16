<%-- 
    Document   : index
    Created on : 2/12/2013, 08:16:56 AM
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

        <title>CRUD</title>
    </head>
    <body>
        <form action="ServletProducto" method="POST" name="form" id="form">
            <label>Producto</label>
            <input name="producto" type="text" /><input type="submit" value="Registrar"/>

            <table border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Producto</th>
                        <th colspan="2">Accion</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = 0; i < ls.size(); i++) {%>
                    <tr>
                        <td><%=i + 1%></td>
                        <td><%=ls.get(i).getNombre()%></td>
                        <td>
                            <a href="<%=context%>/ServletEliminar?&id=<%=ls.get(i).getId()%>">
                                <input type="button" value="Eliminar">
                            </a>
                        </td>
                        <td>
                            <a href="<%=context%>/ServletModificar?&id=<%=ls.get(i).getId()%>&nombre=<%=ls.get(i).getNombre()%>">
                                <input type="button" value="Modificar">
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
    </body>
</html>
