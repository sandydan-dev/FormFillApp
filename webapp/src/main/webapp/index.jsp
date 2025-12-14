<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Premium Registration</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #001a33, #003366, #004080);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Poppins", sans-serif;
        }

        .card-box {
            width: 380px;
            padding: 25px;
            background: rgba(255, 255, 255, 0.15);
            border-radius: 15px;
            color: white;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 20px rgba(255,255,255,0.2);
            position: relative;
        }

        .card-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #ffc107;
        }

        /* Celebration Balloons */
        #celebrate {
            display: none;
            font-size: 45px;
            text-align: center;
            margin-bottom: 10px;
            animation: float 2s ease-out;
        }

        @keyframes float {
            0% { transform: translateY(40px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }

        input, select {
            height: 42px;
        }

        .submit-btn {
            height: 45px;
            font-weight: bold;
        }
    </style>

    <script>
        function showCelebration(event) {
            event.preventDefault();

            document.getElementById("celebrate").style.display = "block";

            setTimeout(() => {
                event.target.submit();
            }, 1500);
        }

        function previewImage(event) {
            const img = document.getElementById("preview");
            img.src = URL.createObjectURL(event.target.files[0]);
        }
    </script>
</head>

<body>

<div class="card-box">

    <!-- Celebration -->
    <div id="celebrate">🎉🎈 Registration Successful 🎈🎉</div>

    <h2>Fill Form</h2>

    <!-- Profile Image -->
    <div class="text-center">
        <img id="preview" src="https://via.placeholder.com/90" class="rounded-circle border border-warning mb-3" width="90" height="90">
    </div>

   

    <form method="post" onsubmit="showCelebration(event)">

        <div class="mb-3">
            <input type="text" name="name" class="form-control" placeholder="Full Name" required>
        </div>

        <div class="mb-3">
            <input type="email" name="email" class="form-control" placeholder="Email" required>
        </div>

        <div class="mb-3">
            <input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
        </div>

        <div class="mb-3">
            <select name="gender" class="form-control" required>
                <option value="">Select Gender</option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
            </select>
        </div>

        <div class="mb-3">
            <input type="password" name="password" class="form-control" placeholder="Password" required>
        </div>

        <button class="btn btn-warning submit-btn w-100">Register</button>

    </form>

</div>

</body>
</html>

