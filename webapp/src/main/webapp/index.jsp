<!DOCTYPE html>
<html>
<head>
    <title>Premium Registration UI</title>

    <!-- Icons CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        /* ---------- GLOBAL BACKGROUND (NAVY BLUE SHINY) ---------- */
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;

            background: linear-gradient(135deg, #001a33, #003366, #004080);
            background-size: 400% 400%;
            animation: shine 12s ease infinite;
        }

        @keyframes shine {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* ---------- DARK MODE ---------- */
        body.light-mode {
            background: linear-gradient(135deg, #f3f3f3, #ffffff, #e6e6e6);
        }

        /* ---------- FORM CARD ---------- */
        .container {
            width: 420px;
            margin: 60px auto;
            padding: 35px;

            background: rgba(255, 255, 255, 0.12);
            border-radius: 18px;
            backdrop-filter: blur(8px);
            box-shadow: 0 0 25px rgba(255, 255, 255, 0.25);
            border: 2px solid transparent;
            transition: 0.3s ease;
            color: white;
        }

        .container:hover {
            border-color: #ffcc00;
            box-shadow: 0 0 40px rgba(255, 204, 0, 0.5);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: wheat;
            letter-spacing: 1px;
        }

        /* ---------- PROFILE IMAGE UPLOAD ---------- */
        .profile-img {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            display: block;
            margin: 0 auto 20px auto;
            border: 3px solid #ffcc00;
            object-fit: cover;
        }

        .upload-btn {
            text-align: center;
            margin-bottom: 22px;
        }

        /* ---------- INPUT WITH ICONS ---------- */
        .input-box {
            position: relative;
            margin-bottom: 18px;
        }

        .input-box i {
            position: absolute;
            top: 13px;
            left: 10px;
            color: #003366;
        }

        input, select {
            width: 100%;
            padding: 12px 12px 12px 38px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.9);
            color: #001f3f;
            font-size: 16px;
        }

        input:focus, select:focus {
            outline: none;
            box-shadow: 0 0 10px #ffcc00;
        }

        /* ---------- GRADIENT BUTTON ---------- */
        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;

            background: linear-gradient(45deg, #ffcc00, #ffaa00);
            transition: 0.3s;
            color: #001a33;
        }

        button:hover {
            background: linear-gradient(45deg, #ffe066, #ffbf00);
        }

        /* ---------- DARK/LIGHT TOGGLE ---------- */
        .toggle-btn {
            position: absolute;
            top: 20px;
            right: 25px;
            cursor: pointer;
            font-size: 26px;
            color: white;
        }

        body.light-mode .toggle-btn {
            color: black;
        }

        /* ---------- SUCCESS POPUP ---------- */
        #successMsg {
            display: none;
            background: #00cc66;
            color: white;
            padding: 12px;
            margin-top: 15px;
            border-radius: 6px;
            text-align: center;
            font-weight: bold;
        }
    </style>

    <script>
        /* ---------- PROFILE PREVIEW ---------- */
        function previewImage(event) {
            const img = document.getElementById("profilePreview");
            img.src = URL.createObjectURL(event.target.files[0]);
        }

        /* ---------- LIGHT / DARK MODE ---------- */
        function toggleTheme() {
            document.body.classList.toggle("light-mode");
        }

        /* ---------- SUCCESS POPUP ---------- */
        function showSuccess(event) {
            event.preventDefault(); 
            document.getElementById("successMsg").style.display = "block";
        }
    </script>

</head>

<body>

    <div class="toggle-btn" onclick="toggleTheme()">
        <i class="fa-solid fa-sun"></i>
    </div>

    <div class="container">
        <h2>Premium Registration</h2>

        <!-- SUCCESS MESSAGE -->
        <div id="successMsg">✔ Registration Successful!</div>

        <form onsubmit="showSuccess(event)" method="post">

            <!-- PROFILE IMAGE -->
            <img id="profilePreview" src="https://via.placeholder.com/110" class="profile-img">

            <div class="upload-btn">
                <input type="file" accept="image/*" onchange="previewImage(event)">
            </div>

            <!-- FULL NAME -->
            <div class="input-box">
                <i class="fa fa-user"></i>
                <input type="text" name="name" placeholder="Full Name" required>
            </div>

            <!-- EMAIL -->
            <div class="input-box">
                <i class="fa fa-envelope"></i>
                <input type="email" name="email" placeholder="Email" required>
            </div>

            <!-- PHONE -->
            <div class="input-box">
                <i class="fa fa-phone"></i>
                <input type="text" name="phone" placeholder="Phone Number" required>
            </div>

            <!-- GENDER -->
            <div class="input-box">
                <i class="fa fa-venus-mars"></i>
                <select name="gender" required>
                    <option value="">Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <!-- PASSWORD -->
            <div class="input-box">
                <i class="fa fa-lock"></i>
                <input type="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit">Register</button>
        </form>

    </div>

</body>
</html>

