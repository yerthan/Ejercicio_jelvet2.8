<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
<div class="container">
  <form method="post" action="GrabarSociosServlet">
    <div class="row mt-2">
      <div class="col-12 h2">Introduzca los datos del nuevo socio</div>
    </div>
    <div class="row mt-2">
      <div class="col-md-6">Nombre</div>
      <div class="col-md-6"><input type="text" name="nombre"/></div>
    </div>
    <div class="row mt-2">
      <div class="col-md-6">Estatura</div>
      <div class="col-md-6"><input type="text" name="estatura"/></div>
    </div>
    <div class="row mt-2">
      <div class="col-md-6">Edad</div>
      <div class="col-md-6"><input type="text" name="edad"/></div>
    </div>
    <div class="row mt-2">
      <div class="col-md-6">Localidad</div>
      <div class="col-md-6"><input type="text" name="localidad"/></div>
    </div>
    <div class="row mt-2">
      <div class="col-md-6">
        &nbsp;
      </div>
      <div class="col-md-6">
        <input class="btn btn-primary" type="submit" value="Aceptar">
      </div>
    </div>
  </form>
  <%
    //                                                 v---- RECOGER MENSAJE DE ERROR DEL ÁMBITO request
    String error = (String) request.getAttribute("error");
//            v---- SI ESTÁ PRESENTE INFORMAR DEL ERROR
    if (error != null) {
  %>
  <div class="row mt-2">
    <div class="col-6">
        <div class="alert alert-danger alert-dismissible fade show">
          <strong>Error!</strong> <%=error%>
          <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
      </div>
  </div>
  <%
    }
  %>
</div>
<script src="js/bootstrap.bundle.js" ></script>
</body>
</html>