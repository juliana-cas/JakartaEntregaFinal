<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h3><%= "Consultar por id" %>
</h3>

<form action="byid" method="post">
    <div class="row mb-3">
        <label for="id" class="col-form-label col-sm-2">Id</label>
        <div class="col-sm-4"><input type="text" name="id" id="id" class="form-control"></div>
        <div class="row mb-3">
            <div>
                <input type="submit" value="Enviar" class="btn btn-primary">
            </div>
        </div>
    </div>
</form>
<br/>
<a href="byid">Vamos a StudentController</a>
</body>
</html>
