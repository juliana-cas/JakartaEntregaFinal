<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.Map"%>
<%@ page import="java.util.List" %>
<%
    List<String> errores = (List<String>)request.getAttribute("errores");
%>
<%
    Map<String,String> errorsmap = (Map<String,String>)request.getAttribute("errorsmap");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher CRUD</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"

            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="p-5 bg-primary text-white text-center">
    <h1>Formulario de docentes</h1>
    <p>Aqui podras ver la informacion sobre los docentes</p>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4>Guardar docente</h4>
    <form action="teacher-form" method="post">
        <div class="row mb-3">
            <label for="teachername" class="col-form-label col-sm-2">Name</label>
            <div class="col-sm-4"><input type="text" name="teachername" id="teachername" class="form-control" value="${param.name}"></div>
            <%
                if(errorsmap != null && errorsmap.containsKey("teachername")){
                    out.println("<div class='row mb-3 alert alert-danger col-sm-4'" +
                            "style='color: red;'>"+ errorsmap.get("teachername") + "</div>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="teacheremail" class="col-form-label col-sm-2">Email</label>
            <div class="col-sm-4"><input type="text" name="teacheremail" id="teacheremail" class="form-control"></div>
            <%
                if(errorsmap != null && errorsmap.containsKey("teacheremail")){
                    out.println("<div class='row mb-3 alert alert-danger col-sm-4' " +
                            "style='color: red;'>"+ errorsmap.get("teacheremail") + "</div>");
                }
            %>
        </div>
        <div class="row mb-3">
            <div>
                <input type="submit" value="Actualizar" class="btn btn-primary">
            </div>
        </div>
    </form>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4><%= "Consultar por ID" %>
    </h4>
    <form action="teacherbyid" method="post">
        <div class="row mb-3">
            <label for="id" class="col-form-label col-sm-2">Id del docente</label>
            <div class="col-sm-4"><input type="text" name="id" id="id" class="form-control"></div>
            <div class="row mb-3">
                <div>
                    <input type="submit" value="Buscar" class="btn btn-primary">
                </div>
            </div>
        </div>
    </form>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4><%= "Eliminar por ID" %>
    </h4>
    <form action="teacherdelete" method="post">
        <div class="row mb-3">
            <label for="idd" class="col-form-label col-sm-2">Id del docente</label>
            <div class="col-sm-4"><input type="text" name="idd" id="idd" class="form-control"></div>
            <div class="row mb-3">
                <div>
                    <input type="submit" value="Eliminar" class="btn btn-primary">
                </div>
            </div>
        </div>
    </form>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4><%= "Lista de profesores" %>
    </h4>
    <a href="teacher-form">Vamos a Listar profesores</a>
</div>
</body>
</html>
