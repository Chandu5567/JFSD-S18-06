<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <style>
        .search-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .search-bar {
            width: 250px;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 5px 0 0 5px;
            outline: none;
        }

        .search-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .search-btn:hover {
            background-color: #218838;
        }

        h1 {
            text-align: center;
        }

        .employee-details {
            margin: 20px auto;
            width: 50%;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

   

    <h1>User Details</h1>

    <div class="employee-details">
        <%
            Employee employee = (Employee) request.getAttribute("emp");
            if (employee != null) {
        %>
            <p><strong>ID:</strong> <%= employee.getId() %></p>
            <p><strong>Name:</strong> <%= employee.getName() %></p>
            <p><strong>Email:</strong> <%= employee.getEmail() %></p>
        <%
            } else {
                out.println("No user data found.");
            }
        %>
    </div>

</body>
</html>
