<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            background-image: url('https://www.barelaw.in/wp-content/uploads/2021/08/d21ba76a-9b64-46cc-a8b5-94146a24920a.webp');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .form-container {
            width: 55%;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h3 {
            color: #333;
            margin-bottom: 20px;
            font-weight: bold; /* Make Admin Login bold */
        }

        table {
            width: 100%;
        }

        label {
            font-size: 14px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            width: 100px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #333;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #5cb85c;
        }

        input[type="reset"]:hover {
            background-color: #d9534f;
        }

        .button-container {
            text-align: center;
            padding-top: 10px;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h3><u>Admin Login</u></h3> <!-- Title inside the form container -->
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
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
