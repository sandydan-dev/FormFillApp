<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Home</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
/* ================== GLOBAL ================== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    height: 100vh;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: #fff;
    overflow: hidden;
}

/* ================== NAVBAR ================== */
.navbar {
    display: flex;
    justify-content: space-between;
    padding: 20px 60px;
    position: relative;
    z-index: 10;
}

.logo {
    font-size: 24px;
    font-weight: 700;
    letter-spacing: 1px;
}

.nav-links a {
    margin-left: 30px;
    text-decoration: none;
    color: #fff;
    font-weight: 400;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #00eaff;
}

/* ================== HERO ================== */
.hero {
    display: flex;
    height: calc(100vh - 80px);
    align-items: center;
    justify-content: space-between;
    padding: 0 80px;
}

.hero-text {
    max-width: 550px;
    animation: slideIn 1.2s ease-out;
}

.hero-text h1 {
    font-size: 52px;
    font-weight: 700;
}

.hero-text h1 span {
    color: #00eaff;
}

.hero-text p {
    margin-top: 20px;
    font-size: 18px;
    line-height: 1.6;
    opacity: 0.9;
}

.hero-text button {
    margin-top: 30px;
    padding: 14px 32px;
    border: none;
    background: #00eaff;
    color: #000;
    font-size: 16px;
    font-weight: 600;
    border-radius: 30px;
    cursor: pointer;
    transition: 0.3s;
}

.hero-text button:hover {
    transform: scale(1.1);
}

/* ================== ANIMATED OBJECTS ================== */
.animation-area {
    position: relative;
    width: 400px;
    height: 400px;
}

/* Bouncing Ball */
.ball {
    width: 80px;
    height: 80px;
    background: radial-gradient(circle, #00eaff, #005f6a);
    border-radius: 50%;
    position: absolute;
    bottom: 0;
    animation: bounce 2s infinite ease-in-out;
}

/* Floating Cube */
.cube {
    width: 120px;
    height: 120px;
    background: linear-gradient(45deg, #ff6a00, #ffcc00);
    position: absolute;
    top: 50px;
    right: 0;
    animation: float 4s infinite ease-in-out;
}

/* Rotating Ring */
.ring {
    width: 160px;
    height: 160px;
    border: 6px solid #00eaff;
    border-radius: 50%;
    position: absolute;
    top: 200px;
    left: 80px;
    animation: rotate 6s linear infinite;
}

/* ================== KEYFRAMES ================== */
@keyframes bounce {
    0%, 100% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-180px);
    }
}

@keyframes float {
    0% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(40px);
    }
    100% {
        transform: translateY(0);
    }
}

@keyframes rotate {
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(360deg);
    }
}

@keyframes slideIn {
    from {
        opacity: 0;
        transform: translateX(-80px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

/* ================== FOOTER ================== */
.footer {
    position: absolute;
    bottom: 20px;
    width: 100%;
    text-align: center;
    font-size: 14px;
    opacity: 0.7;
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">DevOpsHub</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Projects</a>
        <a href="#">CI/CD</a>
        <a href="#">Contact</a>
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero">
    <div class="hero-text">
        <h1> DevOps Engineer.SRE. Build. Deployment. <span>Automate.</span></h1>
        <p>
            A modern DevOps platform integrating CI/CD pipelines, cloud automation,
            container orchestration, and monitoring — all in one place.
        </p>
        <button>Get Started</button>
    </div>

    <!-- ANIMATION AREA -->
    <div class="animation-area">
        <div class="ball"></div>
        <div class="cube"></div>
        <div class="ring"></div>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2025 DevOpsHub | Powered by JSP & Tomcat
</div>

</body>
</html>

