<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.Map"%>
<%@ page import="java.util.List" %>
<%
    List<String> errores = (List<String>)request.getAttribute("errores");
%>
<%
    Map<String,String> errorsmap =
            (Map<String,String>)request.getAttribute("errorsmap");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Grades CRUD</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="p-5 bg-dark text-white text-center">
    <h1>Formulario de notas</h1>
    <p>Aqui podras ver la informacion sobre las notas</p>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4>Guardar asignatura</h4>
    <form action="grades-form" method="post">
        <div class="row mb-3">
            <label for="grade" class="col-form-label col-sm-2">Nota</label>
            <div class="col-sm-4"><input type="text" name="grade" id="grade" class="form-control"></div>
            <%
                if(errorsmap != null && errorsmap.containsKey("grade")){
                    out.println("<div class='row mb-3 alert alert-danger col-sm-4'" +
                            "style='color: red;'>"+ errorsmap.get("grade") + "</div>");
                }
            %>
    </form>
</div>
<br/>
<div class="container p-5 bg-secondary my-5 border">
    <h4><%= "Consultar por id" %>
    </h4>
    <form action="gradesbyid" method="post">
        <div class="row mb-3">
            <label for="id" class="col-form-label col-sm-2">Id</label>
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
    <form action="deletegrade" method="post">
        <div class="row mb-3">
            <label for="idd" class="col-form-label col-sm-2">Id para eliminar</label>
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
    <h4><%= "Lista de notas" %>
    </h4>
    <a href="grades-form">Vamos a listar notas</a>
</div>
</body>
</html>