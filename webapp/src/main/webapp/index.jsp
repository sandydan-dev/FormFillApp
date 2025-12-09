<!DOCTYPE html>
<html>
<head>
    <title>Premium Registration</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>

        /* ---------- GLOBAL ---------- */
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: #f0f2f5;
            transition: 0.4s ease;
        }

        body.dark {
            background: #0f172a;
        }

        /* ---------- TOGGLE MODE ---------- */
        .toggle-btn {
            position: absolute;
            top: 18px;
            right: 25px;
            font-size: 25px;
            cursor: pointer;
            color: #333;
        }

        body.dark .toggle-btn {
            color: #fff;
        }

        /* ---------- FORM CARD ---------- */
        .container {
            width: 420px;
            margin: 60px auto;
            padding: 35px;

            background: white;
            border-radius: 15px;
            box-shadow: 0px 6px 25px rgba(0,0,0,0.1);
            transition: 0.3s ease;
        }

        body.dark .container {
            background: #1e293b;
            box-shadow: 0px 6px 25px rgba(255,255,255,0.08);
        }

        .container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        body.dark .container h2 {
            color: #fff;
        }

        /* ---------- INPUT BOX ---------- */
        .input-box {
            margin-bottom: 18px;
            position: relative;
        }

        .input-box i {
            position: absolute;
            top: 12px;
            left: 12px;
            color: #666;
        }

        body.dark .input-box i {
            color: #ccc;
        }

        input, select {
            width: 100%;
            padding: 12px 12px 12px 38px;
            border-radius: 8px;
            border: 1px solid #bbb;
            font-size: 16px;
            background: #fff;
        }

        body.dark input, 
        body.dark select {
            background: #334155;
            color: white;
            border: 1px solid #475569;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #2563eb;
        }

        /* ---------- PROFILE IMAGE ---------- */
        .profile-img {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            display: block;
            margin: 0 auto 20px auto;
            object-fit: cover;
            border: 3px solid #2563eb;
        }

        /* ---------- BUTTON ---------- */
        button {
            width: 100%;
            padding: 12px;
            background: #2563eb;
            border: none;
            border-radius: 8px;
            font-size: 17px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        /* ---------- BALLOON ANIMATION ---------- */
        .balloon {
            position: fixed;
            bottom: -150px;
            width: 40px;
            height: 60px;
            border-radius: 50%;
            background: red;
            animation: floatUp 6s linear forwards;
        }

        @keyframes floatUp {
            0% { transform: translateY(0) rotate(0deg); opacity: 1; }
            100% { transform: translateY(-900px) rotate(15deg); opacity: 0; }
        }

        /* Success message */
        #successMsg {
            display: none;
            margin-top: 15px;
            text-align: center;
            padding: 10px;
            background: #22c55e;
            color: white;
            border-radius: 6px;
        }

    </style>

    <script>
        function toggleTheme() {
            document.body.classList.toggle("dark");
        }

        function previewImage(event) {
            const img = document.getElementById("profilePreview");
            img.src = URL.createObjectURL(event.target.files[0]);
        }

        /* ---------- BALLOONS FUNCTION ---------- */
        function releaseBalloons() {
            for (let i = 0; i < 12; i++) {
                let balloon = document.createElement("div");
                balloon.classList.add("balloon");

                balloon.style.left = Math.random() * window.innerWidth + "px";

                let colors = ["#ef4444", "#3b82f6", "#22c55e", "#eab308", "#a855f7"];
                balloon.style.background = colors[Math.floor(Math.random() * colors.length)];

                document.body.appendChild(balloon);

                setTimeout(() => balloon.remove(), 6000);
            }
        }

        /* ---------- SUCCESS ---------- */
        function showSuccess(event) {
            event.preventDefault();
            document.getElementById("successMsg").style.display = "block";
            releaseBalloons();
        }
    </script>

</head>

<body>

    <div class="toggle-btn" onclick="toggleTheme()">
        <i class="fa-solid fa-circle-half-stroke"></i>
    </div>

    <div class="container">
        <h2>Premium Registration</h2>

        <div id="successMsg">✔ Registration Successful!</div>

        <form onsubmit="showSuccess(event)" method="post">

            <img id="profilePreview" src="https://via.placeholder.com/110" class="profile-img">

            <input type="file" accept="image/*" onchange="previewImage(event)" style="margin-bottom:20px;">

            <div class="input-box">
                <i class="fa fa-user"></i>
                <input type="text" name="name" placeholder="Full Name" required>
            </div>

            <div class="input-box">
                <i class="fa fa-envelope"></i>
                <input type="email" name="email" placeholder="Email" required>
            </div>

            <div class="input-box">
                <i class="fa fa-phone"></i>
                <input type="text" name="phone" placeholder="Phone Number" required>
            </div>

            <div class="input-box">
                <i class="fa fa-venus-mars"></i>
                <select name="gender" required>
                    <option value="">Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <div class="input-box">
                <i class="fa fa-lock"></i>
                <input type="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit">Register</button>

        </form>
    </div>

</body>
</html>

