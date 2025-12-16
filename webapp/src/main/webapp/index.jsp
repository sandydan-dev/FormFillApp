<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
/* ================= GLOBAL ================= */
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
    font-family:'Poppins',sans-serif;
    background:#0b1622;
    color:#fff;
    overflow-x:hidden;
}

/* ================= BACKGROUND ANIMATION ================= */
.bg span{
    position:fixed;
    width:20px;height:20px;
    background:#00eaff;
    opacity:.15;
    border-radius:50%;
    animation:floatBg 25s linear infinite;
}
.bg span:nth-child(1){left:10%;animation-duration:20s}
.bg span:nth-child(2){left:30%;animation-duration:26s}
.bg span:nth-child(3){left:60%;animation-duration:18s}
.bg span:nth-child(4){left:80%;animation-duration:30s}
@keyframes floatBg{
    from{transform:translateY(100vh)}
    to{transform:translateY(-10vh)}
}

/* ================= NAV ================= */
nav{
    position:fixed;
    width:100%;
    padding:20px 80px;
    display:flex;
    justify-content:space-between;
    background:rgba(0,0,0,.4);
    backdrop-filter:blur(10px);
    z-index:99;
}
nav a{
    color:#fff;
    margin-left:30px;
    text-decoration:none;
}
nav a:hover{color:#00eaff}

/* ================= HERO ================= */
.hero{
    min-height:100vh;
    display:flex;
    align-items:center;
    padding:0 80px;
}
.hero-text{
    width:50%;
    animation:slideLeft 1.2s ease;
}
.hero-text h1{
    font-size:56px;
}
.hero-text span{color:#00eaff}
.hero-text p{
    margin:25px 0;
    opacity:.9;
}
.hero-text button{
    padding:15px 40px;
    border:none;
    border-radius:40px;
    background:#00eaff;
    font-weight:600;
    cursor:pointer;
    transition:.4s;
}
.hero-text button:hover{transform:scale(1.15)}

.hero-anim{
    width:50%;
    position:relative;
    height:400px;
}
.server,.cloud,.gear{
    position:absolute;
    animation:float 4s ease-in-out infinite;
}
.server{
    width:120px;height:160px;
    background:#00eaff;
    border-radius:10px;
    left:120px;top:80px;
}
.cloud{
    width:180px;height:100px;
    border-radius:50px;
    background:#fff;
    opacity:.8;
    top:20px;right:80px;
}
.gear{
    width:90px;height:90px;
    border:10px solid #00eaff;
    border-radius:50%;
    bottom:40px;right:120px;
    animation:rotate 6s linear infinite;
}

/* ================= SECTIONS ================= */
section{
    padding:100px 12%;
}
h2{
    text-align:center;
    font-size:40px;
    margin-bottom:40px;
    color:#00eaff;
}

/* ================= ABOUT ================= */
.about{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:50px;
}
.about div{
    background:rgba(255,255,255,.05);
    padding:40px;
    border-radius:25px;
    transition:.4s;
}
.about div:hover{transform:translateY(-15px)}

/* ================= PROJECTS ================= */
.projects{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:30px;
}
.project{
    padding:35px;
    border-radius:25px;
    background:linear-gradient(145deg,#112233,#0b1622);
    transition:.4s;
}
.project:hover{
    transform:scale(1.08);
    box-shadow:0 0 35px #00eaff;
}

/* ================= TOOLS ================= */
.tools{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(160px,1fr));
    gap:25px;
}
.tool{
    text-align:center;
    padding:25px;
    border-radius:20px;
    background:rgba(0,234,255,.12);
    animation:pulse 3s infinite;
}

/* ================= PIPELINE ================= */
.pipeline{
    display:flex;
    justify-content:center;
    gap:25px;
    flex-wrap:wrap;
}
.step{
    padding:20px 30px;
    background:#00eaff;
    color:#000;
    border-radius:30px;
    font-weight:600;
    animation:slideUp 1s ease forwards;
}

/* ================= CONTACT ================= */
.contact{
    text-align:center;
}
.contact button{
    margin-top:25px;
    padding:18px 50px;
    font-size:18px;
    border:none;
    border-radius:50px;
    background:#00eaff;
    cursor:pointer;
}

/* ================= FOOTER ================= */
footer{
    padding:30px;
    text-align:center;
    background:#000;
}

/* ================= ANIMATIONS ================= */
@keyframes slideLeft{
    from{opacity:0;transform:translateX(-100px)}
    to{opacity:1;transform:none}
}
@keyframes slideUp{
    from{opacity:0;transform:translateY(80px)}
    to{opacity:1;transform:none}
}
@keyframes float{
    50%{transform:translateY(-30px)}
}
@keyframes rotate{
    to{transform:rotate(360deg)}
}
@keyframes pulse{
    50%{transform:scale(1.08)}
}
</style>
</head>

<body>

<div class="bg">
    <span></span><span></span><span></span><span></span>
</div>

<nav>
    <strong>DevOps Portfolio</strong>
    <div>
        <a href="#about">About</a>
        <a href="#projects">Projects</a>
        <a href="#tools">Tools</a>
        <a href="#contact">Contact</a>
    </div>
</nav>

<div class="hero">
    <div class="hero-text">
        <h1>DevOps Engineer <span>& Automation</span></h1>
        <p>CI/CD | Cloud | Kubernetes | Monitoring | Infrastructure as Code</p>
        <button>View My Work</button>
    </div>

    <div class="hero-anim">
        <div class="server"></div>
        <div class="cloud"></div>
        <div class="gear"></div>
    </div>
</div>

<section id="about">
<h2>About Me</h2>
<div class="about">
    <div>🚀 Passionate DevOps Engineer automating deployments and scaling cloud systems.</div>
    <div>⚙️ Strong in CI/CD, AWS, Kubernetes, Terraform & Monitoring.</div>
</div>
</section>

<section id="projects">
<h2>Projects</h2>
<div class="projects">
    <div class="project">End-to-End CI/CD with Jenkins & Kubernetes</div>
    <div class="project">AWS Infrastructure using Terraform</div>
    <div class="project">Monitoring with Prometheus & Grafana</div>
    <div class="project">DevSecOps Pipeline with SonarQube</div>
</div>
</section>

<section id="tools">
<h2>DevOps Tools</h2>
<div class="tools">
    <div class="tool">AWS</div>
    <div class="tool">Docker</div>
    <div class="tool">Kubernetes</div>
    <div class="tool">Terraform</div>
    <div class="tool">Jenkins</div>
    <div class="tool">Ansible</div>
</div>
</section>

<section>
<h2>CI/CD Flow</h2>
<div class="pipeline">
    <div class="step">Code</div>
    <div class="step">Build</div>
    <div class="step">Test</div>
    <div class="step">Deploy</div>
    <div class="step">Monitor</div>
</div>
</section>

<section id="contact" class="contact">
<h2>Let’s Work Together</h2>
<p>Ready to build scalable & automated systems</p>
<button>Contact Me</button>
</section>

<footer>
© 2025 DevOps Portfolio | JSP • Tomcat • Cloud Native
</footer>

</body>
</html>

