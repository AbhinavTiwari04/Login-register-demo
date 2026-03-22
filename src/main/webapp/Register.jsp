<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

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

/* Card */
form {
    background: white;
    padding: 30px 40px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    width: 300px;
    text-align: center;
}

/* Headings */
h2 {
    margin-bottom: 20px;
}

h3 {
    text-align: left;
    margin: 10px 0 5px;
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
    background: #764ba2;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background: #5a3a85;
}

/* Login link */
.login-link {
    margin-top: 15px;
    display: block;
    color: #555;
    text-decoration: none;
}

.login-link:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<div class="container">
    <form method="post" action="Register">
        <h2>Create Account</h2>

        <h3>Username</h3>
        <input type="text" name="username" required>

        <h3>Password</h3>
        <input type="password" name="password" required>

        <input type="submit" value="Register">

        <a href="Login.jsp" class="login-link">
            Already have an account? Login
        </a>
    </form>
</div>

</body>
</html>