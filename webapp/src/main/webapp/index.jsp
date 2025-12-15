<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
* { margin:0; padding:0; box-sizing:border-box; }

body {
    font-family: Poppins, sans-serif;
    background: radial-gradient(circle at top, #0b1c2d, #020617);
    color: #fff;
    overflow-x: hidden;
}

/* ================= PARTICLES ================= */
.particles span {
    position: fixed;
    bottom: -10px;
    width: 6px;
    height: 6px;
    background: #00eaff;
    border-radius: 50%;
    opacity: 0.6;
    animation: rise linear infinite;
}

@keyframes rise {
    to { transform: translateY(-120vh); opacity: 0; }
}

/* ================= HERO ================= */
.hero {
    text-align: center;
    padding: 120px 20px 70px;
    position: relative;
    z-index: 5;
}

.hero h1 {
    font-size: 56px;
}

.hero span { color: #00eaff; }

.hero p {
    margin-top: 18px;
    font-size: 18px;
    opacity: 0.85;
}

/* ================= PIPELINE ================= */
.pipeline-container {
    position: relative;
    margin: 80px auto;
    z-index: 5;
}

.flow {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 75%;
    height: 4px;
    background: linear-gradient(90deg, transparent, #00eaff, transparent);
    transform: translateX(-50%);
    animation: flow 2s linear infinite;
}

@keyframes flow {
    from { background-position: 0%; }
    to { background-position: 200%; }
}

.pipeline {
    display: flex;
    justify-content: center;
    gap: 35px;
}

.stage {
    width: 140px;
    height: 140px;
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(10px);
    border-radius: 20px;
    box-shadow: 0 0 25px rgba(0,234,255,0.25);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    animation: pulse 3s infinite;
}

.stage:nth-child(even) { animation-delay: 1.5s; }

@keyframes pulse {
    50% { transform: scale(1.1); }
}

/* ================= SECTIONS ================= */
.section {
    padding: 80px 80px;
    position: relative;
    z-index: 5;
}

.section h2 {
    text-align: center;
    margin-bottom: 50px;
}

/* ================= TOOLS ================= */
.tools {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px,1fr));
    gap: 30px;
}

.tool {
    background: rgba(255,255,255,0.08);
    padding: 25px;
    border-radius: 18px;
    text-align: center;
    transition: 0.4s;
}

.tool:hover {
    transform: translateY(-15px);
    background: rgba(0,234,255,0.15);
}

/* ================= PROJECT ================= */
.project {
    max-width: 900px;
    margin: auto;
    background: rgba(255,255,255,0.08);
    padding: 40px;
    border-radius: 22px;
    line-height: 1.7;
}

/* ================= CONTACT ================= */
.contact {
    text-align: center;
    padding: 70px 20px;
}

.contact a {
    display: inline-block;
    margin: 10px 15px;
    color: #00eaff;
    text-decoration: none;
}

/* ================= FOOTER ================= */
.footer {
    text-align: center;
    padding: 20px;
    opacity: 0.6;
}
</style>
</head>

<body>

<!-- PARTICLES -->
<div class="particles">
<%
for(int i=0;i<55;i++){
%>
<span style="
left:<%= (int)(Math.random()*100) %>%;
animation-duration:<%= 10 + (int)(Math.random()*15) %>s;
animation-delay:<%= Math.random()*10 %>s;">
</span>
<% } %>
</div>

<!-- HERO -->
<div class="hero">
    <h1>Sandeep <span>Dhanwate</span></h1>
    <p>Cloud & DevOps Engineer | CI/CD | Automation | Kubernetes</p>
</div>

<!-- PIPELINE -->
<div class="pipeline-container">
<div class="flow"></div>
<div class="pipeline">
    <div class="stage">📁<b>Git</b></div>
    <div class="stage">⚙️<b>Jenkins</b></div>
    <div class="stage">🔧<b>Maven</b></div>
    <div class="stage">🔍<b>SonarQube</b></div>
    <div class="stage">🐳<b>Docker</b></div>
    <div class="stage">☸️<b>Kubernetes</b></div>
</div>
</div>

<!-- TOOLS -->
<div class="section">
<h2>DevOps Toolchain</h2>
<div class="tools">
    <div class="tool">AWS & Azure</div>
    <div class="tool">Linux & Shell Scripting</div>
    <div class="tool">Git & Jenkins</div>
    <div class="tool">Docker & Kubernetes</div>
    <div class="tool">Terraform & Ansible</div>
    <div class="tool">JFrog Artifactory</div>
    <div class="tool">Prometheus & Grafana</div>
    <div class="tool">Python Automation</div>
    <div class="tool">DevSecOps Practices</div>
</div>
</div>

<!-- PROJECT -->
<div class="section">
<h2>Featured Project</h2>
<div class="project">
<b>End-to-End CI/CD Pipeline Automation</b><br><br>
Automated complete application lifecycle starting from source code commit to production deployment using
Git, Jenkins, Maven, SonarQube, Docker, JFrog, Kubernetes and cloud infrastructure.
<br><br>
✔ Fully automated build, test, quality scan & deployment<br>
✔ Infrastructure provisioned using Terraform & Ansible<br>
✔ Monitoring with Prometheus & Grafana
</div>
</div>

<!-- CONTACT -->
<div class="contact">
<h2>Contact</h2>
<p>Email: sandydan.dev@gmail.com</p>
<a href="https://github.com/sandydan-dev" target="_blank">GitHub</a>
<a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a>
<br><br>
<!-- Resume placeholder -->
<a href="resume.pdf" style="border:1px solid #00eaff;padding:10px 25px;border-radius:20px;">
Download Resume
</a>
</div>

<div class="footer">
© 2025 | Cloud & DevOps Engineer Portfolio
</div>

</body>
</html>

