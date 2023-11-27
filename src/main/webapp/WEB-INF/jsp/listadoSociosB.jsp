<%@ page import="java.sql.*" %>
<%@ page import="org.iesvdm.jsp_servlet_jdbc.model.Socio" %>
<%@ page import="java.util.List" %>
<%@ page import="org.iesvdm.jsp_servlet_jdbc.model.Socio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Listado de Socios</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-1 h3">ID</div>
        <div class="col-md-4 h3">Nombre</div>
        <div class="col-md-1 h3">Edad</div>
        <div class="col-md-1 h3">Estatura</div>
        <div class="col-md-3 h3">Localidad</div>
        <div class="col-md-2 h3">Operación</div>
    </div>
    <%
    //                                                          v----RECOGER listado DE SOCIO DEL request
    List<Socio> listado = (List<Socio>) request.getAttribute("listado");
    // FOR-EACH SOBRE LA COLECCIÓN DE listado DE SOCIO
    for (Socio socio: listado) {
    %>
    <div class="row mt-2">
        <div class="col-md-1"><%=socio.getSocioId() %>
        </div>
        <div class="col-md-4"><%=socio.getNombre() %>
        </div>
        <div class="col-md-1"><%=socio.getEdad() %>
        </div>
        <div class="col-md-1"><%=socio.getEstatura() %>
        </div>
        <div class="col-md-3"><%=socio.getLocalidad()%>
        </div>

        <div class="col-md-2">
            <form method="get" action="borraSocio.jsp">
                <input type="hidden" name="codigo" value="<%=socio.getSocioId() %>"/>
                <input class="btn btn-primary"  type="submit" value="Borrar">
            </form>
        </div>
    </div>
        <%
      //v--- FIN DEL BUCLE FOR CON HTML INCRUSTADO
    } // for
    %>
</div>


<script src="js/bootstrap.bundle.js" ></script>
</body>
</html>
