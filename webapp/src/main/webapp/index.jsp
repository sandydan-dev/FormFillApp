<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sandeep Dhanwate | Cloud & DevOps Engineer</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
/* ================= RESET ================= */
* { margin:0; padding:0; box-sizing:border-box; }
html { scroll-behavior: smooth; }

/* ================= BODY ================= */
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

/* ================= NAVBAR ================= */
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
    padding: 18px 60px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(12px);
    z-index: 100;
}
.logo {
    font-size: 22px;
    font-weight: 700;
    color: #00eaff;
}
.menu a {
    margin-left: 26px;
    color: #fff;
    text-decoration: none;
    font-size: 15px;
    opacity: 0.85;
}
.menu a:hover { color: #00eaff; }

/* ================= SECTIONS ================= */
section {
    padding: 110px 80px;
    text-align: center;
    position: relative;
    z-index: 5;
}
section h2 {
    margin-bottom: 35px;
}
.text {
    max-width: 900px;
    margin: auto;
    opacity: 0.85;
    font-size: 16px;
}

/* ================= HERO ================= */
#home {
    padding-top: 160px;
}
#home h1 {
    font-size: 56px;
}
#home span { color: #00eaff; }
#home p {
    margin-top: 20px;
    font-size: 18px;
}

/* ================= PIPELINE ================= */
.pipeline-container {
    margin-top: 60px;
    position: relative;
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
    gap: 30px;
}
.stage {
    width: 135px;
    height: 135px;
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(10px);
    border-radius: 18px;
    box-shadow: 0 0 25px rgba(0,234,255,0.25);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    animation: pulse 3s infinite;
}
.stage:nth-child(even) { animation-delay: 1.5s; }
@keyframes pulse {
    50% { transform: scale(1.1); }
}

/* ================= CARDS ================= */
.card {
    max-width: 900px;
    margin: auto;
    background: rgba(255,255,255,0.08);
    padding: 40px;
    border-radius: 22px;
    text-align: left;
}

/* ================= TOOLS ================= */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px,1fr));
    gap: 25px;
}
.tool {
    background: rgba(255,255,255,0.08);
    padding: 22px;
    border-radius: 16px;
    transition: 0.4s;
}
.tool:hover {
    transform: translateY(-12px);
    background: rgba(0,234,255,0.15);
}

/* ================= CONTACT ================= */
.contact a {
    display: inline-block;
    margin: 10px 15px;
    color: #00eaff;
    text-decoration: none;
}

/* ================= FOOTER ================= */
.footer {
    text-align: center;
    padding: 25px;
    opacity: 0.6;
}
</style>
</head>

<body>

<!-- PARTICLES -->
<div class="particles">
<%
for(int i=0;i<60;i++){
%>
<span style="
left:<%= (int)(Math.random()*100) %>%;
animation-duration:<%= 10 + (int)(Math.random()*15) %>s;
animation-delay:<%= Math.random()*10 %>s;">
</span>
<% } %>
</div>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">SD</div>
    <div class="menu">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#experience">Experience</a>
        <a href="#tools">DevOps Tools</a>
        <a href="#certification">Certification</a>
        <a href="#contact">Contact</a>
    </div>
</div>

<!-- HERO -->
<section id="home">
    <h1>Sandeep <span>Dhanwate</span></h1>
    <p>Cloud & DevOps Engineer focused on CI/CD automation, cloud infrastructure and Kubernetes</p>

    <!-- CI/CD PIPELINE -->
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
</section>

<!-- ABOUT -->
<section id="about">
    <h2>About Me</h2>
    <p class="text">
        Entry-to-intermediate Cloud & DevOps Engineer with strong hands-on experience in
        automating CI/CD pipelines, infrastructure as code, and containerized deployments.
        Passionate about continuous learning and DevSecOps practices.
    </p>
</section>

<!-- EXPERIENCE -->
<section id="experience">
    <h2>Experience & Project</h2>
    <div class="card">
        <b>End-to-End CI/CD Pipeline Automation</b><br><br>
        Built a complete automated pipeline from source code commit to Kubernetes deployment
        using Git, Jenkins, Maven, SonarQube, Docker, JFrog, Terraform, Ansible and Kubernetes.
        <br><br>
        ✔ Automated build, test, quality scan and deployment<br>
        ✔ Infrastructure provisioning using IaC<br>
        ✔ Monitoring using Prometheus & Grafana
    </div>
</section>

<!-- TOOLS -->
<section id="tools">
    <h2>DevOps Tools</h2>
    <div class="grid">
        <div class="tool">AWS & Azure</div>
        <div class="tool">Linux & Shell Scripting</div>
        <div class="tool">Git & Jenkins</div>
        <div class="tool">Docker & Kubernetes</div>
        <div class="tool">Terraform & Ansible</div>
        <div class="tool">Maven & JFrog</div>
        <div class="tool">SonarQube & DevSecOps</div>
        <div class="tool">Prometheus & Grafana</div>
        <div class="tool">Python Automation</div>
    </div>
</section>

<!-- CERTIFICATION -->
<section id="certification">
    <h2>Certification</h2>
    <p class="text">
        AWS Certified Cloud Practitioner – In Progress<br>
        Planned: AWS Solutions Architect Associate
    </p>
</section>

<!-- CONTACT -->
<section id="contact" class="contact">
    <h2>Contact</h2>
    <p>Email: sandydan.dev@gmail.com</p>
    <a href="https://github.com/sandydan-dev" target="_blank">GitHub</a>
    <a href="https://www.linkedin.com/in/sandeep-dhanwate-2841332b8" target="_blank">LinkedIn</a>
    <a href="resume.pdf">Download Resume</a>
</section>

<div class="footer">
© 2025 | Cloud & DevOps Engineer Portfolio
</div>

</body>
</html>

