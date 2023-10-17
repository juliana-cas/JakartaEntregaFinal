<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3><%= "Consultar por ID" %>
</h3>

<form action="subjectbyid" method="post">
    <div class="row mb-3">
        <label for="id" class="col-form-label col-sm-2">Id de la asignatura</label>
        <div class="col-sm-4"><input type="text" name="id" id="id" class="form-control"></div>
        <div class="row mb-3">
            <div>
                <input type="submit" value="Enviar" class="btn btn-primary">
            </div>
        </div>
    </div>
</form>
<br/>
</body>
</html>