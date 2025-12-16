<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
    font-family:'Poppins',sans-serif;
    background:#e7dfdc;
    color:#fff;
}

/* ================= MAIN CARD ================= */
.wrapper{
    max-width:1150px;
    margin:40px auto;
    background:#0f1a23;
    border-radius:26px;
    overflow:hidden;
    box-shadow:0 40px 80px rgba(0,0,0,.5);
}

/* ================= NAV ================= */
nav{
    display:flex;
    justify-content:space-between;
    padding:25px 45px;
}
nav a{
    color:#aaa;
    margin-left:25px;
    text-decoration:none;
}
nav a:hover{color:#ff6a4d}

/* ================= HERO ================= */
.hero{
    display:grid;
    grid-template-columns:1.2fr 1fr;
    padding:70px 45px;
    align-items:center;
}
.hero h1{font-size:48px}
.hero span{color:#ff6a4d}
.hero p{margin:25px 0;color:#aaa}

.btns button{
    padding:14px 30px;
    border-radius:30px;
    border:none;
    cursor:pointer;
    font-weight:600;
    margin-right:15px;
}
.primary{background:#ff6a4d}
.outline{
    background:none;
    border:2px solid #ff6a4d;
    color:#ff6a4d;
}

/* ================= PROFILE + SVG ================= */
.profile{
    position:relative;
    display:flex;
    justify-content:center;
}
.profile img{
    width:260px;
    border-radius:22px;
    z-index:2;
}
.svg-ring{
    position:absolute;
    width:320px;
    animation:spin 14s linear infinite;
}

/* ================= SERVICES ================= */
.services{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:30px;
    padding:40px;
}
.service{
    display:flex;
    align-items:center;
    gap:15px;
    color:#ccc;
}

/* ================= SECTIONS ================= */
section{padding:50px}
h2{text-align:center;margin-bottom:20px}
.center{
    max-width:720px;
    margin:auto;
    text-align:center;
    color:#aaa;
}

/* ================= STATS ================= */
.stats{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    text-align:center;
    padding:25px 0;
}
.stat h3{color:#ff6a4d;font-size:32px}

/* ================= CARDS ================= */
.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
    gap:25px;
}
.card{
    background:#15232f;
    padding:25px;
    border-radius:22px;
    transition:.4s;
}
.card:hover{
    transform:translateY(-14px);
    box-shadow:0 0 30px #ff6a4d;
}

/* ================= RESUME ================= */
.resume-box{
    text-align:center;
    margin-top:30px;
}
.resume-btn{
    padding:18px 50px;
    border-radius:40px;
    border:none;
    background:#ff6a4d;
    font-size:18px;
    font-weight:600;
    cursor:pointer;
    transition:.4s;
}
.resume-btn:hover{
    transform:scale(1.1);
    box-shadow:0 0 25px #ff6a4d;
}

/* ================= SCROLL ANIMATION ================= */
.reveal{
    opacity:0;
    transform:translateY(60px);
    transition:1s ease;
}
.reveal.show{
    opacity:1;
    transform:none;
}

/* ================= FOOTER ================= */
footer{
    padding:25px;
    text-align:center;
    color:#777;
}

/* ================= KEYFRAMES ================= */
@keyframes spin{
    to{transform:rotate(360deg)}
}

/* ================= MOBILE ================= */
@media(max-width:900px){
    .hero{grid-template-columns:1fr;text-align:center}
    .services,.stats{grid-template-columns:1fr}
}
</style>
</head>

<body>

<div class="wrapper">

<!-- NAV -->
<nav>
    <strong>DevOps Engineer</strong>
    <div>
        <a href="#about">About</a>
        <a href="#projects">Projects</a>
        <a href="#resume">Resume</a>
        <a href="#contact">Contact</a>
    </div>
</nav>

<!-- HERO -->
<div class="hero reveal">
    <div>
        <h1>Hello<span>.</span><br>I’m <b>DevOps Engineer</b></h1>
        <p>CI/CD • AWS • Kubernetes • Terraform • Monitoring</p>
        <div class="btns">
            <a href="#contact"><button class="primary">Got a project?</button></a>
            <a href="#resume"><button class="outline">My Resume</button></a>
        </div>
    </div>

    <div class="profile">
        <svg class="svg-ring" viewBox="0 0 300 300">
            <circle cx="150" cy="150" r="120" fill="none" stroke="#ff6a4d" stroke-width="6"/>
            <text x="150" y="155" fill="#fff" text-anchor="middle">CI/CD</text>
        </svg>
        <img src="profile.png" alt="Profile">
    </div>
</div>

<!-- SERVICES -->
<div class="services reveal">
    <div class="service">⚙️ CI/CD Automation</div>
    <div class="service">☁️ Cloud Infrastructure</div>
    <div class="service">📊 Monitoring & Logging</div>
</div>

<!-- ABOUT -->
<section id="about" class="reveal">
    <h2>About Me</h2>
    <p class="center">
        DevOps Engineer passionate about automation, cloud-native systems,
        and building reliable CI/CD pipelines.
    </p>
</section>

<!-- STATS -->
<div class="stats reveal">
    <div class="stat"><h3>15+</h3><p>Projects</p></div>
    <div class="stat"><h3>95%</h3><p>Success</p></div>
    <div class="stat"><h3>2+</h3><p>Years</p></div>
</div>

<!-- PROJECTS -->
<section id="projects" class="reveal">
    <h2>Projects</h2>
    <div class="grid">
        <div class="card">CI/CD Pipeline – Jenkins & Kubernetes</div>
        <div class="card">Terraform AWS Infrastructure</div>
        <div class="card">Monitoring – Prometheus & Grafana</div>
    </div>
</section>

<!-- RESUME DOWNLOAD -->
<section id="resume" class="reveal">
    <h2>My Resume</h2>
    <p class="center">
        Download my resume to see detailed experience, skills,
        and DevOps projects.
    </p>

    <div class="resume-box">
        <a href="assets/DevOps_Resume.pdf" download>
            <button class="resume-btn">📄 Download Resume</button>
        </a>
    </div>
</section>

<!-- CONTACT -->
<section id="contact" class="reveal">
    <h2>Let’s Work Together</h2>
    <p class="center">Open for DevOps & Cloud opportunities</p>
</section>

<footer>
© 2025 DevOps Portfolio | JSP • Tomcat
</footer>

</div>

<script>
/* GSAP-LIKE SCROLL ANIMATION */
const items=document.querySelectorAll('.reveal');
const observer=new IntersectionObserver(entries=>{
  entries.forEach(e=>{
    if(e.isIntersecting){e.target.classList.add('show')}
  })
},{threshold:.2});
items.forEach(el=>observer.observe(el));
</script>

</body>
</html>

