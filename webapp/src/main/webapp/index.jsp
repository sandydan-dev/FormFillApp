<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
:root{
--bg:#0b0c1f;
--card:rgba(255,255,255,0.08);
--text:#ffffff;
--accent:#00eaff;
--accent2:#0077ff;
--glow:0 0 25px rgba(0,234,255,.4);
}

*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth;}
body{
font-family:'Poppins', sans-serif;
background:var(--bg);
color:var(--text);
overflow-x:hidden;
}

/* HEADER */
header{
position:fixed;
top:0;
width:100%;
padding:15px 60px;
display:flex;
justify-content:space-between;
align-items:center;
background:var(--card);
backdrop-filter:blur(14px);
z-index:100;
}
.logo{font-size:22px;font-weight:700;color:var(--accent);}
nav a{
margin-left:30px;
color:#fff;
text-decoration:none;
opacity:.8;
transition:0.3s;
}
nav a:hover{opacity:1;color:var(--accent);}

/* HERO */
#home{
min-height:100vh;
display:flex;
align-items:center;
justify-content:space-between;
padding:160px 80px 80px;
}
.hero-left{width:50%;}
.hero-left h1{
font-size:54px;
animation:fadeInDown 1s ease forwards;
opacity:0;
}
.hero-left span{color:var(--accent);}
.hero-left p{
margin:20px 0;
font-size:18px;
opacity:.85;
animation:fadeIn 1.5s ease forwards;
opacity:0;
}

/* SUBTLE PIPELINE ANIMATION */
.pipeline{
margin-top:30px;
display:flex;
align-items:center;
gap:20px;
animation:fadeIn 2s ease forwards;
opacity:0;
}
.step{
padding:12px 18px;
border-radius:12px;
background:var(--card);
box-shadow:var(--glow);
position:relative;
font-weight:500;
}
.step::after{
content:'→';
position:absolute;
right:-20px;
top:50%;
transform:translateY(-50%);
font-weight:bold;
color:var(--accent);
}
.step:last-child::after{content:'';}
@keyframes fadeInDown{
from{opacity:0;transform:translateY(-40px);}to{opacity:1;transform:translateY(0);}
}
@keyframes fadeIn{from{opacity:0;}to{opacity:1;}}

/* HERO RIGHT IMAGE / ANIMATION */
.hero-right{
width:45%;
position:relative;
display:flex;
justify-content:center;
align-items:center;
}
.pipeline-anim{
width:220px;
height:220px;
border-radius:50%;
border:2px dashed rgba(0,234,255,.3);
position:relative;
animation:rotate 15s linear infinite;
display:flex;
justify-content:center;
align-items:center;
}
.node{
width:24px;height:24px;
border-radius:50%;
background:var(--accent);
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
display:flex;
justify-content:center;
align-items:center;
font-size:10px;
font-weight:700;
color:#000;
box-shadow:0 0 12px var(--accent);
}
.node1{transform:translate(90px,-50px);}
.node2{transform:translate(-90px,-50px);}
.node3{transform:translate(0px,90px);}
.node4{transform:translate(0px,-90px);}
@keyframes rotate{
0%{transform:rotate(0deg);}100%{transform:rotate(360deg);}
}

/* SECTIONS */
section{
padding:120px 80px;
text-align:center;
}
.card{
max-width:900px;
margin:auto;
background:var(--card);
padding:40px;
border-radius:25px;
backdrop-filter:blur(14px);
opacity:0;
animation:fadeIn 1s forwards;
animation-delay:.5s;
}

/* GRID FOR TOOLS */
.tool-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(120px,1fr));
gap:20px;
margin-top:30px;
}
.tool-card{
padding:20px;
background:var(--card);
border-radius:18px;
backdrop-filter:blur(12px);
transition:0.3s;
}
.tool-card:hover{
transform:translateY(-8px);
box-shadow:0 0 25px var(--accent);
}

/* FOOTER */
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

/* ANIMATIONS FOR SECTIONS ON SCROLL */
section.fadeInUp{
opacity:0;
transform:translateY(40px);
transition:all 0.8s ease;
}
section.fadeInUp.show{
opacity:1;
transform:translateY(0);
}
</style>
</head>

<body>

<header>
<div class="logo">Sandeep D</div>
<nav>
<a href="#home">Home</a>
<a href="#about">About</a>
<a href="#skills">Skills</a>
<a href="#projects">Projects</a>
<a href="#contact">Contact</a>
</nav>
</header>

<!-- HERO -->
<section id="home">
<div class="hero-left">
<h1>Sandeep <span>Dhanwate</span></h1>
<p>Cloud & DevOps Engineer | Automating pipelines, scaling cloud infra, and monitoring globally.</p>
<div class="pipeline">
<div class="step">GIT</div>
<div class="step">Jenkins</div>
<div class="step">Docker</div>
<div class="step">K8S</div>
<div class="step">Terraform</div>
</div>
</div>

<div class="hero-right">
<div class="pipeline-anim">
<div class="node node1">GIT</div>
<div class="node node2">JENKINS</div>
<div class="node node3">DOCKER</div>
<div class="node node4">K8S</div>
</div>
</div>
</section>

<!-- ABOUT -->
<section id="about" class="fadeInUp">
<h2>About Me</h2>
<div class="card">
Automation-focused Cloud & DevOps Engineer with knowledge of multi-cloud, CI/CD pipelines, Kubernetes, Terraform, Docker, Ansible, and monitoring tools.
</div>
</section>

<!-- SKILLS -->
<section id="skills" class="fadeInUp">
<h2>DevOps Tools</h2>
<div class="tool-grid">
<div class="tool-card">Linux</div>
<div class="tool-card">AWS</div>
<div class="tool-card">Azure</div>
<div class="tool-card">Git</div>
<div class="tool-card">Jenkins</div>
<div class="tool-card">Docker</div>
<div class="tool-card">Kubernetes</div>
<div class="tool-card">Terraform</div>
<div class="tool-card">Ansible</div>
<div class="tool-card">Prometheus</div>
<div class="tool-card">Grafana</div>
<div class="tool-card">SonarQube</div>
<div class="tool-card">DevSecOps</div>
</div>
</section>

<!-- PROJECTS -->
<section id="projects" class="fadeInUp">
<h2>Projects</h2>
<div class="card">
End-to-End CI/CD automation pipelines using Git, Jenkins, Maven, Docker, Kubernetes, Terraform, Ansible, Prometheus, and SonarQube.
</div>
</section>

<!-- CONTACT -->
<section id="contact" class="fadeInUp">
<h2>Contact</h2>
<div class="card">
<p>Email: sandydan.dev@gmail.com</p>
<p>
<a href="https://github.com/sandydan-dev" target="_blank">GitHub</a> |
<a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a> |
<a href="resume.pdf">Download Resume</a>
</p>
</div>
</section>

<footer>
© 2025 Sandeep Dhanwate • Cloud & DevOps Engineer
</footer>

<script>
// Animate sections on scroll
const sections = document.querySelectorAll('section.fadeInUp');
window.addEventListener('scroll',()=>{
  let triggerBottom = window.innerHeight/1.2;
  sections.forEach(section=>{
    const boxTop = section.getBoundingClientRect().top;
    if(boxTop < triggerBottom){
      section.classList.add('show');
    }
  });
});
</script>

</body>
</html>

