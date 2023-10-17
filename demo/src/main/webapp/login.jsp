<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="p-5 bg-dark text-white text-center">
    <h1>Iniciar sesion</h1>
</div>
</h3>
<div class="container p-5 bg-secondary my-5 border">
    <form action="login" method="post">
        <div>
            <label for="username">Username</label>
            <div>
                <input type="text" name="username" id="username">
            </div>
        </div>
        <div>
            <label for="password">Password</label>
            <div>
                <input type="password" name="password" id="password">
            </div>
        </div>
        <div>
            <input type="submit" value="Login">
        </div>
    </form>
</div>
</body>
</html>