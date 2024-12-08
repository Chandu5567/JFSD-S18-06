<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <style>
        /* Shared CSS for consistent styling between empreg and emplogin */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://i0.wp.com/www.opindia.com/wp-content/uploads/2024/10/ambedkar.jpg?fit=700%2C400&ssl=1');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .form-container {
            width: auto;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
		    opacity:0.7;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .form-container h1 {
            color: black;
            font-size: 28px; /* Adjust font size to match input fields */
			font-color:black;
            font-weight: bold;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.7);
            width: 100%; /* Make it align with the input fields */
            padding-bottom: 10px;
            border-bottom: 1px solid #ccc;
            display: inline-block;
        }

        table {
            width: 100%;
            text-align: left;
        }

        table td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .button-container {
            text-align: center;
            padding-top: 10px;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #5cb85c;
        }

        input[type="reset"]:hover {
            background-color: #d9534f;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h4 align="center" style="color:red">
        <c:out value="${message}"></c:out>
    </h4>
    <div class="form-container">
        <h1>User Login</h1>
        <form method="post" action="checkeplogin">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
