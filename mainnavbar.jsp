<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        .header-container {
            display: inline-block;
            margin-top: 30px;
            text-align: center;
        }

        h2 {
            color:black;
            font-weight: bold;
			background-color:white;
			opacity:70%;
            font-size: 28px;
            letter-spacing: 1px;
            margin-bottom: 10px; /* Reduced margin between heading and navbar */
        }

        .navbar {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            background-color: #000; /* Black background */
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
		
        .navbar a {
            color: white;
            padding: 12px 20px;
            margin: 0 10px;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: color 0.4s ease-in-out, transform 0.3s ease-in-out;
            position: relative;
        }

        .navbar a::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 3px;
            background-color: #007BFF;
            bottom: -5px;
            left: 0;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform 0.4s ease-in-out;
        }

        .navbar a:hover::before {
            transform: scaleX(1);
            transform-origin: left;
        }

        .navbar a:hover {
            color: #007BFF;
            transform: translateY(-2px);
        }

        .navbar a.active {
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="header-container">
        <h2>Indian Constitution</h2>
        <div class="navbar">
            <a href="/" class="active">Home</a>
            <a href="empreg">User Registration</a>
            <a href="emplogin">User Login</a>
            <a href="adminlogin">Admin Login</a>
    </div>
</body>
</html>
