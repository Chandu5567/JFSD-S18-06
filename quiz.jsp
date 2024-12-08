<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz on Indian Constitution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .quiz-container {
            background-color: white;
            border-radius: 10px;
            padding: 40px;
            width: 70%;
            margin: 0 auto;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
        .quiz-title {
            font-size: 36px;
            color: #4c3c4c;
            margin-bottom: 20px;
        }
        .question {
            font-size: 20px;
            color: #555;
            margin-top: 20px;
        }
        .options {
            margin-top: 20px;
        }
        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: gray;
        }
        .back-button {
            margin-top: 20px;
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
</head>
<body>
    <div class="quiz-container">
        <div class="quiz-title">Quiz on Indian Constitution</div>
        <form action="quizresult.jsp" method="post">
            <div class="question">
                1. What is the supreme law of India?
                <div class="options">
                    <input type="radio" name="q1" value="A"> A. Indian Penal Code<br>
                    <input type="radio" name="q1" value="B"> B. Indian Constitution<br>
                    <input type="radio" name="q1" value="C"> C. Criminal Procedure Code<br>
                </div>
            </div>
            <div class="question">
                2. Who is the father of the Indian Constitution?
                <div class="options">
                    <input type="radio" name="q2" value="A"> A. Mahatma Gandhi<br>
                    <input type="radio" name="q2" value="B"> B. Dr. B.R. Ambedkar<br>
                    <input type="radio" name="q2" value="C"> C. Jawaharlal Nehru<br>
                </div>
            </div>
            <div class="question">
                3. When was the Indian Constitution adopted?
                <div class="options">
                    <input type="radio" name="q3" value="A"> A. 1947<br>
                    <input type="radio" name="q3" value="B"> B. 1950<br>
                    <input type="radio" name="q3" value="C"> C. 1952<br>
                </div>
            </div>
            <button type="submit" class="back-button">Submit Quiz</button>
        </form>
    </div>
</body>
</html>
