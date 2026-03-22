<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #667eea, #764ba2);
}

/* Center container */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form styling */
form {
    background: white;
    padding: 30px 40px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    width: 300px;
    text-align: center;
}

/* Headings */
h3 {
    margin: 10px 0 5px;
    text-align: left;
}

/* Inputs */
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

/* Button */
input[type="submit"] {
    width: 100%;
    padding: 10px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background: #5a67d8;
}
</style>

</head>
<body>

<div class="container">
    <form method="post" action="Login">
        <h2>Login</h2>

        <h3>Username</h3>
        <input type="text" name="username" required>

        <h3>Password</h3>
        <input type="password" name="password" required>

        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>