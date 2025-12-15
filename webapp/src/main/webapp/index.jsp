<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
/* ================= THEME ================= */
:root{
--bg:#020617;
--card:rgba(255,255,255,0.08);
--text:#ffffff;
--accent:#00eaff;
--glow:0 0 25px rgba(0,234,255,.4);
}
.light{
--bg:#f4f7fb;
--card:rgba(255,255,255,0.7);
--text:#020617;
--accent:#005eff;
}

/* ================= BASE ================= */
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
font-family:Poppins,sans-serif;
background:linear-gradient(120deg,#020617,#061a2f,#020617);
background-size:400% 400%;
animation:bgMove 18s ease infinite;
color:var(--text);
overflow-x:hidden;
transition:.4s;
}
@keyframes bgMove{
50%{background-position:100% 50%}
}

/* ================= HEADER ================= */
header{
position:fixed;
top:0;
width:100%;
padding:18px 70px;
display:flex;
justify-content:space-between;
align-items:center;
background:var(--card);
backdrop-filter:blur(14px);
z-index:100;
}
.logo{
font-size:22px;
font-weight:700;
color:var(--accent);
text-shadow:var(--glow);
}
nav a{
margin-left:26px;
color:var(--text);
text-decoration:none;
opacity:.7;
font-size:15px;
}
nav a.active,nav a:hover{
opacity:1;
color:var(--accent);
}
.toggle{cursor:pointer}

/* ================= SECTIONS ================= */
section{
padding:120px 80px;
opacity:0;
transform:translateY(60px);
transition:1s;
}
section.show{opacity:1;transform:none}
h2{
text-align:center;
margin-bottom:35px;
font-size:38px;
}
.divider{
width:90px;
height:4px;
background:var(--accent);
margin:10px auto 40px;
box-shadow:var(--glow);
border-radius:10px;
}

/* ================= HERO ================= */
#home{
min-height:100vh;
display:flex;
align-items:center;
justify-content:space-between;
padding-top:160px;
}
.hero-left{width:48%}
.hero-left h1{
font-size:54px;
}
.hero-left span{color:var(--accent)}
.hero-left p{
margin:20px 0;
font-size:18px;
opacity:.85;
}
.type{
color:var(--accent);
font-weight:500;
}

/* ================= PIPELINE ================= */
.hero-right{width:45%}
.pipeline{
display:flex;
flex-direction:column;
align-items:center;
}
.stage{
width:100%;
padding:18px;
margin:10px 0;
background:var(--card);
border-radius:18px;
backdrop-filter:blur(14px);
box-shadow:0 0 25px rgba(0,234,255,.18);
position:relative;
overflow:hidden;
animation:float 4s ease-in-out infinite;
}
.stage::after{
content:"";
position:absolute;
left:-30%;
top:0;
width:30%;
height:100%;
background:linear-gradient(120deg,transparent,var(--accent),transparent);
animation:scan 3s linear infinite;
opacity:.25;
}
@keyframes scan{to{left:130%}}
.stage:nth-child(even){animation-delay:2s}
@keyframes float{50%{transform:translateY(-10px)}}

/* ================= CARD ================= */
.card{
max-width:900px;
margin:auto;
background:var(--card);
padding:45px;
border-radius:25px;
backdrop-filter:blur(14px);
}

/* ================= TOOLS ================= */
.tools{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
gap:25px;
}
.tool{
background:var(--card);
padding:25px;
border-radius:18px;
transition:.4s;
}
.tool:hover{
transform:translateY(-12px);
background:rgba(0,234,255,.15);
box-shadow:var(--glow);
}

/* ================= FOOTER ================= */
footer{
padding:45px;
text-align:center;
background:var(--card);
}
footer a{
color:var(--accent);
text-decoration:none;
margin:0 12px;
font-weight:500;
}

/* ================= RESPONSIVE ================= */
@media(max-width:900px){
#home{flex-direction:column;text-align:center}
.hero-left,.hero-right{width:100%}
}
</style>
</head>

<body>

<header>
<div class="logo">SD</div>
<nav>
<a href="#home" class="active">Home</a>
<a href="#about">About</a>
<a href="#project">Projects</a>
<a href="#tools">DevOps Tools</a>
<a href="#contact">Contact</a>
</nav>
<div class="toggle" onclick="toggleTheme()">🌗</div>
</header>

<!-- HERO -->
<section id="home" class="show">
<div class="hero-left">
<h1>Sandeep <span>Dhanwate</span></h1>
<p class="type" id="typing"></p>
<p>
Cloud & DevOps Engineer focused on building reliable,
automated CI/CD pipelines and scalable cloud infrastructure.
</p>
</div>

<div class="hero-right">
<div class="pipeline">
<div class="stage">📁 Git – Source Control</div>
<div class="stage">⚙️ Jenkins – CI Automation</div>
<div class="stage">🔧 Maven & SonarQube – Build & Quality</div>
<div class="stage">🐳 Docker – Containerization</div>
<div class="stage">☸️ Kubernetes – Orchestration</div>
</div>
</div>
</section>

<!-- ABOUT -->
<section id="about">
<h2>About Me</h2>
<div class="divider"></div>
<div class="card">
Fresher to intermediate Cloud & DevOps Engineer with strong hands-on
experience in CI/CD automation, Infrastructure as Code, monitoring,
and DevSecOps practices. I believe in automation-first engineering.
</div>
</section>

<!-- PROJECT -->
<section id="project">
<h2>Project Experience</h2>
<div class="divider"></div>
<div class="card">
<b>End-to-End CI/CD Automation on Cloud</b><br><br>
• Fully automated pipeline from code commit to Kubernetes deployment<br>
• Jenkins integrated with Maven, SonarQube, Docker & JFrog<br>
• Infrastructure provisioned using Terraform & Ansible<br>
• Observability using Prometheus & Grafana
</div>
</section>

<!-- TOOLS -->
<section id="tools">
<h2>DevOps Tools</h2>
<div class="divider"></div>
<div class="tools">
<div class="tool"><b>Linux & Shell</b><br>Automation & system management</div>
<div class="tool"><b>AWS & Azure</b><br>Cloud infrastructure & services</div>
<div class="tool"><b>Git & Jenkins</b><br>CI/CD pipeline automation</div>
<div class="tool"><b>Docker & Kubernetes</b><br>Containerization & orchestration</div>
<div class="tool"><b>Terraform & Ansible</b><br>Infrastructure as Code</div>
<div class="tool"><b>Prometheus & Grafana</b><br>Monitoring & observability</div>
</div>
</section>

<!-- CONTACT -->
<section id="contact">
<h2>Contact</h2>
<div class="divider"></div>
<div class="card" style="text-align:center">
<p>Email: sandydan.dev@gmail.com</p><br>
<a href="https://github.com/sandydan-dev" target="_blank">GitHub</a> |
<a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a> |
<a href="resume.pdf">Download Resume</a>
</div>
</section>

<footer>
© 2025 Sandeep Dhanwate • Cloud & DevOps Engineer • Automation First
</footer>

<script>
/* Typing effect */
const text="Cloud & DevOps Engineer | CI/CD • Cloud • Kubernetes";
let i=0;
setInterval(()=>{
document.getElementById("typing").innerText=text.slice(0,i++);
if(i>text.length)i=0;
},120);

/* Scroll reveal */
const sections=document.querySelectorAll("section");
window.addEventListener("scroll",()=>{
sections.forEach(sec=>{
if(sec.getBoundingClientRect().top<window.innerHeight-120){
sec.classList.add("show");
}
});
});

/* Active menu */
const links=document.querySelectorAll("nav a");
window.addEventListener("scroll",()=>{
sections.forEach((sec,i)=>{
if(sec.offsetTop-150<=scrollY){
links.forEach(l=>l.classList.remove("active"));
links[i].classList.add("active");
}
});
});

/* Theme toggle */
function toggleTheme(){
document.body.classList.toggle("light");
}
</script>

</body>
</html>

