<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
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
            text-align: center;
            margin-top: 20px;
        }

        /* Form Container */
        .form-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        textarea {
            height: 100px;
            resize: none;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #0066cc;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #004999;
        }

        .button-container {
            text-align: center;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            h3 {
                font-size: 1.6em;
            }

            .form-container {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>
    <h3><u>Contact Us</u></h3>
    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required/></td>
                </tr>
                <tr>
                    <td><label for="message">Message</label></td>
                    <td>
                        <textarea id="message" name="message" required></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
s