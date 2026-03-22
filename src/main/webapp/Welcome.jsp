<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

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
.card {
    background: white;
    padding: 40px;
    border-radius: 12px;
    text-align: center;
    width: 350px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

/* Heading */
.card h1 {
    margin-bottom: 10px;
    color: #333;
}

/* Username */
.username {
    color: #667eea;
    font-weight: bold;
}

/* Message */
.card p {
    color: #666;
    margin-bottom: 20px;
}

/* Button */
.btn {
    padding: 10px 20px;
    border: none;
    background: #667eea;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
}

.btn:hover {
    background: #5a67d8;
}
</style>

</head>

<body>

<div class="container">
    <div class="card">
        <h1>Welcome 👋</h1>

        <p>
            Hello 
            <span class="username">
                <%= request.getAttribute("username") %>
            </span>
        </p>

        <p>You have successfully logged in.</p>

        <a href="Login.jsp" class="btn">Logout</a>
    </div>
</div>

</body>
</html>