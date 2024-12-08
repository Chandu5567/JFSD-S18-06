<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('ic.jpeg'); /* Replace 'your-image-path.jpg' with your image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
            font-size: 28px;
            background-color: rgba(255, 255, 255, 0.8); /* Optional: Add background to enhance readability */
            display: inline-block;
            padding: 10px 20px;
            border-radius: 8px;
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: rgba(51, 51, 51, 0.9); /* Semi-transparent background */
            padding: 15px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            padding: 15px 25px;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: 0.4s ease-in-out;
            position: relative;
        }

        .navbar a::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 3px;
            background-color: #007BFF;
            bottom: 0;
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
        }

        .navbar a.active {
            color: #007BFF;
        }

        #sessionModal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1001;
            justify-content: center;
            align-items: center;
        }

        #sessionModal .modal-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            width: 300px;
        }

        #sessionModal button {
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }

        #sessionModal .extend {
            background-color: #007BFF;
            color: white;
            border: none;
        }

        #sessionModal .logout {
            background-color: #f44336;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <h2>Indian Constitution</h2>
    <div class="navbar">
        <a href="emphome">Home</a>
        <a href="empprofile">Profile</a>
        <a href="empcontactus">Contact Us</a>
        <a href="updateemp">Update User</a>
        <a href="emplogout">Logout</a>
    </div>

    <!-- Session Timeout Modal -->
    <div id="sessionModal">
        <div class="modal-content">
            <p>Your session is about to expire. Do you want to extend it?</p>
            <button class="extend" onclick="extendSession()">Extend Session</button>
            <button class="logout" onclick="window.location.href='emplogout'">Logout</button>
        </div>
    </div>

    <script>
        let sessionTimeout; // Timer for session expiration
        let warningTimeout; // Timer for showing warning modal

        function startSessionTimer() {
            // Show warning after 25 seconds
            warningTimeout = setTimeout(() => {
                showSessionModal();
            }, 25000);

            // Expire session after 30 seconds
            sessionTimeout = setTimeout(() => {
                window.location.href = 'emplogout'; // Redirect to logout
            }, 30000);
        }

        function resetSessionTimer() {
            clearTimeout(sessionTimeout);
            clearTimeout(warningTimeout);
            startSessionTimer(); // Restart session timers
        }

        function showSessionModal() {
            const modal = document.getElementById('sessionModal');
            modal.style.display = 'flex';
        }

        function hideSessionModal() {
            const modal = document.getElementById('sessionModal');
            modal.style.display = 'none';
        }

        function extendSession() {
            hideSessionModal();
            resetSessionTimer(); // Extend session
        }

        // Start session timer on page load
        window.onload = startSessionTimer;

        // Reset session timer on user interaction (click, keypress, etc.)
        document.body.addEventListener('click', resetSessionTimer);
        document.body.addEventListener('keypress', resetSessionTimer);
    </script>
</body>
</html>
