<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sandeep Dhanwate | DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">

<style>
/* ===== GLOBAL ===== */
*{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{
    font-family:'Poppins',sans-serif;
    background: linear-gradient(135deg,#0f2027,#203a43,#2c5364);
    color:#fff;
}
a{text-decoration:none;color:#fff;}

/* ===== NAVBAR ===== */
.navbar{
    display:flex;justify-content:space-between;
    padding:20px 60px;
    position:fixed;width:100%;top:0;
    background:rgba(0,0,0,0.5);backdrop-filter:blur(12px);
    z-index:100;
}
.logo{font-size:24px;font-weight:700;letter-spacing:1px;}
.nav-links a{margin-left:30px;font-weight:500;transition:0.3s;}
.nav-links a:hover{color:#00eaff;}

/* ===== HERO ===== */
.hero{
    display:flex;
    min-height:100vh;
    align-items:center;
    justify-content:space-between;
    padding:0 80px;
}
.hero-text{max-width:500px;animation:fadeIn 1s ease forwards;}
.hero-text h1{font-size:52px;font-weight:700;}
.hero-text h1 span{color:#00eaff;}
.hero-text p{margin:20px 0;font-size:18px;opacity:.9;}
.hero-text button{
    margin-top:30px;padding:14px 32px;
    border:none;background:#00eaff;color:#000;
    font-size:16px;font-weight:600;border-radius:30px;
    cursor:pointer;transition:0.3s;
}
.hero-text button:hover{transform:scale(1.05);}

/* ===== PIPELINE ANIMATION ===== */
.pipeline-area{position:relative;width:350px;height:350px;}
.pipeline-circle{
    width:50px;height:50px;
    border-radius:50%;
    background:#00eaff;
    display:flex;align-items:center;justify-content:center;
    font-weight:700;color:#000;
    position:absolute;top:50%;left:50%;
    transform:translate(-50%,-50%);
    box-shadow:0 0 20px #00eaff;
}
.pipeline-line{
    position:absolute;width:2px;height:80px;
    background:#00eaff;
    top:50%;left:50%;
    transform-origin:top center;
}

/* ===== SECTIONS ===== */
section{padding:120px 80px;text-align:center;}
.card{
    max-width:900px;margin:auto;
    background:rgba(255,255,255,0.08);
    padding:40px;border-radius:25px;
    backdrop-filter:blur(12px);opacity:0;
    transition:all 0.8s ease;
}
section.show .card{opacity:1;}

/* ===== TOOL GRID ===== */
.tool-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(120px,1fr));
    gap:20px;margin-top:30px;
}
.tool-card{
    padding:20px;
    background:rgba(255,255,255,0.08);
    border-radius:18px;
    backdrop-filter:blur(12px);
    transition:0.3s;
}
.tool-card:hover{transform:translateY(-6px);box-shadow:0 0 20px #00eaff;}

/* ===== FOOTER ===== */
.footer{
    padding:40px;text-align:center;background:rgba(0,0,0,0.5);
}

/* ===== KEYFRAMES ===== */
@keyframes fadeIn{
    from{opacity:0;transform:translateY(40px);}
    to{opacity:1;transform:translateY(0);}
}
@keyframes rotateCircle{
    from{transform:rotate(0deg);}
    to{transform:rotate(360deg);}
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">Sandeep D</div>
    <div class="nav-links">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#skills">Skills</a>
        <a href="#projects">Projects</a>
        <a href="#contact">Contact</a>
    </div>
</div>

<!-- HERO -->
<section id="home" class="hero">
    <div class="hero-text">
        <h1>Sandeep <span>Dhanwate</span></h1>
        <p>Cloud & DevOps Engineer | Building automated CI/CD pipelines, containerized deployments, and scalable cloud infrastructure.</p>
        <button>Get Started</button>
    </div>

    <div class="pipeline-area">
        <!-- Nodes -->
        <div class="pipeline-circle" style="transform: translate(-50%,-50%) rotate(0deg) translate(120px) rotate(0deg)">GIT</div>
        <div class="pipeline-circle" style="transform: translate(-50%,-50%) rotate(72deg) translate(120px) rotate(-72deg)">JENKINS</div>
        <div class="pipeline-circle" style="transform: translate(-50%,-50%) rotate(144deg) translate(120px) rotate(-144deg)">DOCKER</div>
        <div class="pipeline-circle" style="transform: translate(-50%,-50%) rotate(216deg) translate(120px) rotate(-216deg)">K8S</div>
        <div class="pipeline-circle" style="transform: translate(-50%,-50%) rotate(288deg) translate(120px) rotate(-288deg)">TERRAFORM</div>
    </div>
</section>

<!-- ABOUT -->
<section id="about">
<h2>About Me</h2>
<div class="card">
Automation-focused Cloud & DevOps Engineer with experience in CI/CD pipelines, container orchestration, cloud infrastructure, and monitoring tools.
</div>
</section>

<!-- SKILLS -->
<section id="skills">
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
<section id="projects">
<h2>Projects</h2>
<div class="card">
End-to-End CI/CD pipelines integrating Git, Jenkins, Docker, Kubernetes, Terraform, Ansible, and Prometheus monitoring.
</div>
</section>

<!-- CONTACT -->
<section id="contact">
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

<!-- FOOTER -->
<div class="footer">
© 2025 Sandeep Dhanwate | Cloud & DevOps Engineer
</div>

<script>
// Animate cards on scroll
const cards = document.querySelectorAll('.card');
window.addEventListener('scroll',()=>{
    cards.forEach(card=>{
        const rect = card.getBoundingClientRect();
        if(rect.top < window.innerHeight - 100){
            card.parentElement.classList.add('show');
        }
    });
});
</script>

</body>
</html>

