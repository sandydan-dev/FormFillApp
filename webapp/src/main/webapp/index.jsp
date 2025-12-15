<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
/* ================== ROOT THEMES ================== */
:root{
--bg:#020617;
--card:rgba(255,255,255,0.08);
--text:#ffffff;
--accent:#00eaff;
}
.light{
--bg:#f4f7fb;
--card:rgba(255,255,255,0.6);
--text:#020617;
--accent:#0066ff;
}

/* ================== BASE ================== */
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
font-family:Poppins,sans-serif;
background:var(--bg);
color:var(--text);
overflow-x:hidden;
transition:.4s;
}

/* ================== HEADER ================== */
header{
position:fixed;
top:0;
width:100%;
padding:18px 70px;
display:flex;
justify-content:space-between;
align-items:center;
background:var(--card);
backdrop-filter:blur(12px);
z-index:100;
}
.logo{font-size:22px;font-weight:700;color:var(--accent)}
nav a{
margin-left:26px;
color:var(--text);
text-decoration:none;
opacity:.7;
font-size:15px;
}
nav a.active,nav a:hover{opacity:1;color:var(--accent)}
.toggle{
cursor:pointer;
font-size:18px;
}

/* ================== SECTIONS ================== */
section{
padding:120px 80px;
opacity:0;
transform:translateY(60px);
transition:1s;
}
section.show{opacity:1;transform:none}
h2{text-align:center;margin-bottom:30px;font-size:36px}

/* ================== HERO ================== */
#home{
min-height:100vh;
display:flex;
align-items:center;
justify-content:space-between;
padding-top:160px;
}
.hero-left{width:48%}
.hero-left h1{font-size:52px}
.hero-left span{color:var(--accent)}
.hero-left p{margin:20px 0;font-size:18px;opacity:.85}

/* ================== PIPELINE ================== */
.hero-right{width:45%}
.pipeline{
display:flex;
flex-direction:column;
align-items:center;
}
.stage{
width:100%;
padding:18px;
margin:8px 0;
background:var(--card);
border-radius:18px;
backdrop-filter:blur(12px);
box-shadow:0 0 25px rgba(0,234,255,.15);
animation:float 4s ease-in-out infinite;
text-align:center;
}
.stage:nth-child(even){animation-delay:2s}
@keyframes float{50%{transform:translateY(-10px)}}

/* ================== SVG ARROWS ================== */
svg{height:30px}
path{
stroke:var(--accent);
stroke-width:3;
fill:none;
stroke-dasharray:10;
animation:dash 1.5s linear infinite;
}
@keyframes dash{to{stroke-dashoffset:-20}}

/* ================== CARD ================== */
.card{
max-width:900px;
margin:auto;
background:var(--card);
padding:45px;
border-radius:25px;
backdrop-filter:blur(14px);
}

/* ================== TOOLS ================== */
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
.tool:hover{transform:translateY(-10px);background:rgba(0,234,255,.15)}

/* ================== FOOTER ================== */
footer{
padding:40px;
text-align:center;
background:var(--card);
}
footer a{color:var(--accent);text-decoration:none;margin:0 10px}

/* ================== RESPONSIVE ================== */
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
<div class="toggle" onclick="toggleTheme()">🌙</div>
</header>

<!-- HERO -->
<section id="home" class="show">
<div class="hero-left">
<h1>Sandeep <span>Dhanwate</span></h1>
<p>
Cloud & DevOps Engineer specializing in CI/CD automation, cloud infrastructure,
container orchestration and DevSecOps practices.
</p>
</div>

<div class="hero-right">
<div class="pipeline">
<div class="stage">📁 Git</div>
<svg><path d="M10 0 L10 30"/></svg>
<div class="stage">⚙️ Jenkins</div>
<svg><path d="M10 0 L10 30"/></svg>
<div class="stage">🔧 Maven + SonarQube</div>
<svg><path d="M10 0 L10 30"/></svg>
<div class="stage">🐳 Docker</div>
<svg><path d="M10 0 L10 30"/></svg>
<div class="stage">☸️ Kubernetes</div>
</div>
</div>
</section>

<section id="about">
<h2>About Me</h2>
<div class="card">
Fresher to intermediate Cloud & DevOps Engineer with hands-on experience in
CI/CD automation, Infrastructure as Code, monitoring and security integration.
</div>
</section>

<section id="project">
<h2>Projects</h2>
<div class="card">
<b>End-to-End CI/CD Automation</b><br><br>
• Git → Jenkins → Maven → SonarQube → Docker → Kubernetes<br>
• Terraform & Ansible for infrastructure<br>
• Prometheus & Grafana monitoring
</div>
</section>

<section id="tools">
<h2>DevOps Tools</h2>
<div class="tools">
<div class="tool"><b>Linux & Shell</b><br>Automation & OS management</div>
<div class="tool"><b>AWS & Azure</b><br>Cloud infrastructure</div>
<div class="tool"><b>Docker & Kubernetes</b><br>Containers & orchestration</div>
<div class="tool"><b>Terraform & Ansible</b><br>Infrastructure as Code</div>
<div class="tool"><b>Jenkins & Git</b><br>CI/CD pipelines</div>
<div class="tool"><b>Prometheus & Grafana</b><br>Monitoring</div>
</div>
</section>

<section id="contact">
<h2>Contact</h2>
<div class="card" style="text-align:center">
<p>Email: sandydan.dev@gmail.com</p><br>
<a href="https://github.com/sandydan-dev" target="_blank">GitHub</a> |
<a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a> |
<a href="resume.pdf">Download Resume</a>
</div>
</section>

<footer>
© 2025 Sandeep Dhanwate | Cloud & DevOps Engineer
</footer>

<script>
/* Scroll reveal */
const sections=document.querySelectorAll("section");
window.addEventListener("scroll",()=>{
sections.forEach(sec=>{
if(sec.getBoundingClientRect().top<window.innerHeight-100){
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

