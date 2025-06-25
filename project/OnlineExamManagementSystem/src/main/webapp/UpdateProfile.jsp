<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <link rel="stylesheet" href="Feedback.css">
</head>
<body>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
%>

<div class="modal" id="registerModal">
    <div class="modal-content">
        <span class="close" id="closeModal">&times;</span>
        
        <h2>Update Profile</h2>
        
        <form class="register-form" method="POST" action="UpdateProfileServlet">
            <label>ID:</label>
            <input type="text" name="id" value="<%=id%>" readonly />

            <label>Full Name:</label>
            <input type="text" name="name" value="<%=name%>" required />

            <label>Phone number:</label>
            <input type="text" name="phone" value="<%=phone%>" required />

            <label>Email:</label>
            <input type="email" name="email" value="<%=email%>" required />

            <label>Username:</label>
            <input type="text" name="userName" value="<%=userName%>" required />

            <label>Password:</label>
            <input type="password" name="password" value="<%=password%>" required />

            <button type="submit">Update</button>
        </form>
    </div>
</div>

</body>
</html>
