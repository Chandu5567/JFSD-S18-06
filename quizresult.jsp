<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // Correct Answers
    Map<String, String> correctAnswers = new HashMap<>();
    correctAnswers.put("q1", "B"); // Indian Constitution
    correctAnswers.put("q2", "B"); // Dr. B.R. Ambedkar
    correctAnswers.put("q3", "B"); // 1950

    int score = 0;
    Map<String, String> userAnswers = new HashMap<>();

    // Get user answers and calculate score
    for (Map.Entry<String, String> entry : correctAnswers.entrySet()) {
        String userAnswer = request.getParameter(entry.getKey());
        userAnswers.put(entry.getKey(), userAnswer);
        if (entry.getValue().equals(userAnswer)) {
            score++;
        }
    }

    // Percentage Calculation
    double percentage = (score / 3.0) * 100;
    boolean eligibleForCertificate = percentage >= 75;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .result-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            background-color: #fff;
            padding: 20px;
        }
        .result-card {
            background-color: #fff;
            border: 2px solid #e0e0e0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 80%;
            max-width: 600px;
            text-align: center;
        }
        .result-card h2 {
            font-size: 32px;
            color: #333;
            margin-bottom: 20px;
        }
        .result-card p {
            font-size: 18px;
            color: #333;
        }
        .certificate-btn {
            background-color: #28a745;
            color: white;
            font-size: 18px;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .certificate-btn:hover {
            background-color: #218838;
        }
        .answer-result {
            text-align: left;
            margin-top: 20px;
        }
        .answer-result p {
            font-size: 16px;
        }
        .correct {
            color: green;
        }
        .incorrect {
            color: red;
        }
        .certificate-content {
            display: none;
            margin-top: 20px;
            padding: 20px;
            border: 2px solid #28a745;
            border-radius: 10px;
            background-color: #f0f8f0;
            text-align: center;
        }
        .certificate-content h3 {
            color: #28a745;
        }
    </style>
</head>
<body>

<div class="result-container">
    <div class="result-card">
        <h2>Quiz Results</h2>
        <p>Your Score: <%= score %> out of 3</p>
        <p>Percentage: <%= percentage %> %</p>

        <!-- Show Answer Results -->
        <div class="answer-result">
            <p><b>Question 1: What is the supreme law of India?</b></p>
            <p class="<%= userAnswers.get("q1").equals("B") ? "correct" : "incorrect" %>">
                Your Answer: <%= userAnswers.get("q1") %>
                <%= userAnswers.get("q1").equals("B") ? "(Correct)" : "(Incorrect)" %>
            </p>

            <p><b>Question 2: Who is the father of the Indian Constitution?</b></p>
            <p class="<%= userAnswers.get("q2").equals("B") ? "correct" : "incorrect" %>">
                Your Answer: <%= userAnswers.get("q2") %>
                <%= userAnswers.get("q2").equals("B") ? "(Correct)" : "(Incorrect)" %>
            </p>

            <p><b>Question 3: When was the Indian Constitution adopted?</b></p>
            <p class="<%= userAnswers.get("q3").equals("B") ? "correct" : "incorrect" %>">
                Your Answer: <%= userAnswers.get("q3") %>
                <%= userAnswers.get("q3").equals("B") ? "(Correct)" : "(Incorrect)" %>
            </p>
        </div>

        <!-- Eligibility for Certificate -->
        <%
            if (eligibleForCertificate) {
        %>
            <p>Congratulations! You are eligible for the Certificate.</p>
            <button class="certificate-btn" onclick="showCertificate()">View Certificate</button>
        <%
            } else {
        %>
            <p>Sorry, you need at least 75% to get the certificate.</p>
        <%
            }
        %>

        <button class="certificate-btn" onclick="window.location.href='empHome.jsp'">Go Back to Home</button>
    </div>

    <!-- Certificate Content -->
    <div class="certificate-content" id="certificateContent">
        <h3>Certificate of Completion</h3>
        <p>Congratulations! You have successfully completed the quiz on the Indian Constitution.</p>
        <p><b>Score:</b> <%= score %> / 3</p>
        <p><b>Percentage:</b> <%= percentage %> %</p>
        <button class="certificate-btn" onclick="window.print()">Print Certificate</button>
    </div>
</div>

<script>
    function showCertificate() {
        // Redirect to certificate.jsp with the parameters
        window.location.href = "certificate.jsp?name=" + encodeURIComponent("<%= request.getParameter("userName") %>") +
                               "&score=" + <%= score %> + 
                               "&percentage=" + <%= percentage %>;
    }
</script>

</body>
</html>
