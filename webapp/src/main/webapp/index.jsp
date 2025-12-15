<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
:root{
--bg:#020617;
--card:rgba(255,255,255,0.08);
--text:#ffffff;
--accent:#00eaff;
--glow:0 0 25px rgba(0,234,255,.4);
}

*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
font-family:Poppins,sans-serif;
background:radial-gradient(circle at top,#081a33,#020617);
color:var(--text);
overflow-x:hidden;
}

/* ================= STARS ================= */
.stars span{
position:fixed;
width:2px;height:2px;
background:#fff;
opacity:.7;
animation:twinkle 4s infinite alternate;
}
@keyframes twinkle{to{opacity:.2}}

/* ================= HEADER ================= */
header{
position:fixed;
top:0;width:100%;
padding:18px 70px;
display:flex;
justify-content:space-between;
align-items:center;
background:var(--card);
backdrop-filter:blur(14px);
z-index:100;
}
.logo{font-size:22px;font-weight:700;color:var(--accent)}
nav a{
margin-left:26px;
color:#fff;
text-decoration:none;
opacity:.7;
}
nav a:hover{opacity:1;color:var(--accent)}

/* ================= HERO ================= */
#home{
min-height:100vh;
display:flex;
align-items:center;
justify-content:space-between;
padding:160px 80px 80px;
}
.hero-left{width:45%}
.hero-left h1{font-size:54px}
.hero-left span{color:var(--accent)}
.hero-left p{margin:20px 0;font-size:18px;opacity:.85}

/* ================= SPACE SYSTEM ================= */
.hero-right{
width:50%;
display:flex;
justify-content:center;
align-items:center;
position:relative;
}

.space{
position:relative;
width:420px;
height:420px;
}

/* Earth */
.earth{
width:180px;height:180px;
border-radius:50%;
background:radial-gradient(circle at 30% 30%,#2bbcff,#002244);
position:absolute;
top:50%;left:50%;
transform:translate(-50%,-50%);
box-shadow:inset -25px -25px 50px rgba(0,0,0,.6),
0 0 40px rgba(0,234,255,.5);
animation:rotateEarth 25s linear infinite;
}
@keyframes rotateEarth{
to{transform:translate(-50%,-50%) rotate(360deg)}
}

/* Cloud provider labels */
.cloud{
position:absolute;
font-size:12px;
font-weight:700;
color:#00eaff;
text-shadow:0 0 10px rgba(0,234,255,.8);
}
.aws{top:35%;left:60%}
.azure{top:55%;left:35%}
.gcp{top:45%;left:45%}

/* Orbits */
.orbit{
position:absolute;
top:50%;left:50%;
border:1px dashed rgba(255,255,255,.2);
border-radius:50%;
transform:translate(-50%,-50%);
}
.o1{width:260px;height:260px;animation:spin 14s linear infinite}
.o2{width:320px;height:320px;animation:spin 20s linear infinite reverse}
.o3{width:380px;height:380px;animation:spin 28s linear infinite}
@keyframes spin{
to{transform:translate(-50%,-50%) rotate(360deg)}
}

/* Satellites / Tool nodes */
.tool{
width:28px;height:28px;
background:linear-gradient(135deg,#00eaff,#0077ff);
border-radius:50%;
position:absolute;
top:-14px;left:50%;
transform:translateX(-50%);
box-shadow:0 0 18px rgba(0,234,255,.9);
display:flex;
align-items:center;
justify-content:center;
font-size:8px;
font-weight:700;
color:#001;
text-align:center;
}

/* ================= TERMINAL ================= */
.terminal{
margin-top:40px;
background:#000;
color:#00ff88;
font-family:monospace;
padding:18px;
border-radius:12px;
font-size:14px;
box-shadow:0 0 30px rgba(0,0,0,.8);
max-width:420px;
}
.cursor{
display:inline-block;
width:8px;
background:#00ff88;
animation:blink 1s infinite;
}
@keyframes blink{50%{opacity:0}}

/* ================= SECTIONS ================= */
section{
padding:120px 80px;
text-align:center;
}
.card{
max-width:900px;
margin:auto;
background:var(--card);
padding:45px;
border-radius:25px;
backdrop-filter:blur(14px);
}

/* ================= FOOTER ================= */
footer{
padding:45px;
text-align:center;
background:var(--card);
margin-top:80px;
}
footer a{
color:var(--accent);
text-decoration:none;
margin:0 12px;
}
</style>
</head>

<body>

<!-- STARS -->
<div class="stars">
<%
for(int i=0;i<140;i++){
%>
<span style="top:<%=Math.random()*100%>%;left:<%=Math.random()*100%>%;"></span>
<% } %>
</div>

<header>
<div class="logo">SD</div>
<nav>
<a href="#home">Home</a>
<a href="#about">About</a>
<a href="#project">Projects</a>
<a href="#tools">DevOps Tools</a>
<a href="#contact">Contact</a>
</nav>
</header>

<!-- HERO -->
<section id="home">
<div class="hero-left">
<h1>Sandeep <span>Dhanwate</span></h1>
<p>
Cloud & DevOps Engineer building globally scalable,
automated CI/CD pipelines and cloud infrastructure.
</p>

<div class="terminal" id="terminal">
$ git push origin main<br>
$ terraform apply<br>
$ kubectl rollout status deploy/app<br>
<span class="cursor"></span>
</div>
</div>

<div class="hero-right">
<div class="space">
<div class="earth">
<div class="cloud aws">AWS</div>
<div class="cloud azure">AZURE</div>
<div class="cloud gcp">GCP</div>
</div>

<!-- CI/CD Orbit -->
<div class="orbit o1">
<div class="tool">GIT</div>
<div class="tool" style="transform:translateX(-50%) rotate(45deg);">JENKINS</div>
<div class="tool" style="transform:translateX(-50%) rotate(90deg);">GITLAB</div>
</div>

<!-- IaC / Containers -->
<div class="orbit o2">
<div class="tool">TERRAFORM</div>
<div class="tool" style="transform:translateX(-50%) rotate(60deg);">DOCKER</div>
<div class="tool" style="transform:translateX(-50%) rotate(120deg);">K8S</div>
<div class="tool" style="transform:translateX(-50%) rotate(180deg);">ANSIBLE</div>
</div>

<!-- Monitoring / DevSecOps -->
<div class="orbit o3">
<div class="tool">PROM</div>
<div class="tool" style="transform:translateX(-50%) rotate(60deg);">GRAFANA</div>
<div class="tool" style="transform:translateX(-50%) rotate(120deg);">SONAR</div>
<div class="tool" style="transform:translateX(-50%) rotate(180deg);">TRIVY</div>
</div>

</div>
</div>
</section>

<section id="about">
<h2>About Me</h2>
<div class="card">
Automation-focused Cloud & DevOps Engineer with hands-on experience
in CI/CD pipelines, Infrastructure as Code, Kubernetes and monitoring.
</div>
</section>

<section id="project">
<h2>Project</h2>
<div class="card">
End-to-End CI/CD pipeline using Git, Jenkins, Maven, SonarQube,
Docker, Kubernetes, Terraform, Ansible and Prometheus.
</div>
</section>

<section id="tools">
<h2>DevOps Tools</h2>
<div class="card">
Linux • AWS • Azure • Git • Jenkins • Docker • Kubernetes • Terraform •
Ansible • Prometheus • Grafana • DevSecOps
</div>
</section>

<section id="contact">
<h2>Contact</h2>
<div class="card">
<p>Email: sandydan.dev@gmail.com</p><br>
<a href="https://github.com/sandydan-dev" target="_blank">GitHub</a> |
<a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a> |
<a href="resume.pdf">Download Resume</a>
</div>
</section>

<footer>
© 2025 Sandeep Dhanwate • Cloud & DevOps Engineer • Global Automation
</footer>

</body>
</html>

