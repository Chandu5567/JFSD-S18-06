<%@ page import="com.klef.jfsd.springboot.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    // Fetch the Employee object from the session
    Employee emp = (Employee) session.getAttribute("employee");
    String name = emp.getName();
    String score = request.getParameter("score");
    String percentage = request.getParameter("percentage");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Certificate</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .certificate-container {
            border: 10px solid #4c3c4c;
            border-radius: 15px;
            background-color: white;
            padding: 40px;
            width: 80%;
            margin: 0 auto;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
        .certificate-title {
            font-size: 40px;
            color: #4c3c4c;
            margin-bottom: 20px;
        }
        .certificate-text {
            font-size: 20px;
            color: #555;
            margin-top: 20px;
        }
        .certificate-name {
            font-size: 25px;
            font-weight: bold;
            color: #333;
        }
        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: gray;
        }
        .print-button {
            margin-top: 20px;
            background-color: #4c3c4c;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .print-button:hover {
            background-color: #372737;
        }
        .back-button {
            margin-top: 10px;
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: #e55347;
        }
    </style>
    <script>
        function printCertificate() {
            window.print();
        }
        function goBack() {
            window.location.href = "emphome.jsp";  // Redirects to Employee Home Page (replace with actual path if needed)
        }
    </script>
</head>
<body>
    <div class="certificate-container">
        <div class="certificate-title">Certificate of Achievement</div>
        <div class="certificate-text">
            This is to certify that
            <p class="certificate-name"><%= name %></p>
            has successfully completed the quiz on the Indian Constitution.
        </div>
        <p class="certificate-text">Score: <%= score %>/3 (<%= percentage %>%)</p>
        <div class="footer">Issued on: <%= new java.util.Date() %></div>
        <button class="print-button" onclick="printCertificate()">Print Certificate</button>
        <button class="back-button" onclick="goBack()">Go Back to Home</button>
    </div>
</body>
</html>
