<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee) session.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home</title>
<style>
    /* General Styles */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        color: #333;
    }

    h3 {
        color: #0066cc;
        font-size: 1.8em;
    }

    /* Navbar Styles */
    nav {
        background-color: #0044cc;
        color: #fff;
        padding: 1em;
        text-align: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    nav a {
        color: #fff;
        text-decoration: none;
        margin: 0 15px;
        font-weight: bold;
    }

    nav a:hover {
        text-decoration: underline;
    }

    /* Profile Section */
    .profile-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: left;
    }

    .profile-container b {
        color: #0044cc;
    }

    .profile-container div {
        margin: 10px 0;
        line-height: 1.6;
    }

    /* Footer */
    footer {
        background-color: #0044cc;
        color: #ffffff;
        text-align: center;
        padding: 1em;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<h3 style="text-align: center;"><u>User Profile</u></h3>

<div class="profile-container">
    <div><b>ID:</b> <%=emp.getId()%></div>
    <div><b>NAME:</b> <%=emp.getName()%></div>
    <div><b>GENDER:</b> <%=emp.getGender()%></div>
    <div><b>DATE OF BIRTH:</b> <%=emp.getDateofbirth()%></div>
    <div><b>LOCATION:</b> <%=emp.getLocation()%></div>
    <div><b>EMAIL:</b> <%=emp.getEmail()%></div>
    <div><b>CONTACT:</b> <%=emp.getContact()%></div>
    <div><b>STATUS:</b> <%=emp.getStatus()%></div>
</div>

<footer>
    &copy; 2024 Employee Management System
</footer>

</body>
</html>
