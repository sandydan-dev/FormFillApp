<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DevOps Resume | Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
    font-family:'Poppins',sans-serif;
    background:#0b1220;
    color:#fff;
    overflow-x:hidden;
}

/* ========= GLOBAL ANIMATION ========= */
.reveal{
    opacity:0;
    transform:translateY(60px);
    transition:1s ease;
}
.reveal.active{
    opacity:1;
    transform:none;
}

/* ========= NAV ========= */
nav{
    position:fixed;
    top:0;width:100%;
    padding:20px 80px;
    background:rgba(0,0,0,.6);
    backdrop-filter:blur(10px);
    display:flex;
    justify-content:space-between;
    z-index:999;
}
nav a{
    margin-left:25px;
    text-decoration:none;
    color:#fff;
}
nav a:hover{color:#00eaff}

/* ========= HERO ========= */
.hero{
    min-height:100vh;
    display:flex;
    align-items:center;
    padding:120px 80px;
}
.hero-text{width:50%}
.hero-text h1{font-size:56px}
.hero-text span{color:#00eaff}
.hero-text p{margin:25px 0;opacity:.85}

.hero-svg{width:50%;position:relative}
svg{width:100%}

/* ========= SECTIONS ========= */
section{
    padding:100px 12%;
}
h2{
    text-align:center;
    font-size:38px;
    color:#00eaff;
    margin-bottom:40px;
}

/* ========= ABOUT ========= */
.about{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:40px;
}
.box{
    background:rgba(255,255,255,.05);
    padding:35px;
    border-radius:25px;
    transition:.4s;
}
.box:hover{transform:translateY(-15px)}

/* ========= SKILLS ========= */
.skills{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(160px,1fr));
    gap:25px;
}
.skill{
    padding:25px;
    border-radius:20px;
    background:rgba(0,234,255,.12);
    text-align:center;
    animation:pulse 3s infinite;
}

/* ========= TIMELINE ========= */
.timeline{
    position:relative;
    max-width:900px;
    margin:auto;
}
.timeline:before{
    content:'';
    position:absolute;
    left:50%;
    width:4px;
    height:100%;
    background:#00eaff;
}
.entry{
    width:45%;
    padding:25px;
    background:#111a2f;
    border-radius:20px;
    margin:40px 0;
}
.entry.left{margin-left:0}
.entry.right{margin-left:55%}

/* ========= PROJECTS ========= */
.projects{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:30px;
}
.project{
    padding:30px;
    border-radius:25px;
    background:linear-gradient(145deg,#112244,#0b1220);
    transition:.4s;
}
.project:hover{
    transform:scale(1.08);
    box-shadow:0 0 35px #00eaff;
}

/* ========= GITHUB ========= */
.repo{
    padding:20px;
    border-radius:18px;
    background:rgba(255,255,255,.06);
}

/* ========= CONTACT ========= */
.contact{
    text-align:center;
}
.contact button{
    padding:18px 50px;
    font-size:18px;
    border:none;
    border-radius:50px;
    background:#00eaff;
    cursor:pointer;
}

/* ========= FOOTER ========= */
footer{
    padding:30px;
    text-align:center;
    background:#000;
}

/* ========= KEYFRAMES ========= */
@keyframes pulse{
    50%{transform:scale(1.08)}
}
</style>
</head>

<body>

<nav>
    <strong>DevOps Resume</strong>
    <div>
        <a href="#about">About</a>
        <a href="#skills">Skills</a>
        <a href="#experience">Experience</a>
        <a href="#projects">Projects</a>
        <a href="#github">GitHub</a>
        <a href="#contact">Contact</a>
    </div>
</nav>

<!-- HERO -->
<div class="hero">
    <div class="hero-text reveal">
        <h1>DevOps Engineer <span>& Automation</span></h1>
        <p>CI/CD • Kubernetes • Cloud • Terraform • Monitoring</p>
    </div>

    <!-- REAL DEVOPS SVG -->
    <div class="hero-svg reveal">
        <svg viewBox="0 0 600 400">
            <circle cx="300" cy="200" r="120" fill="none" stroke="#00eaff" stroke-width="6">
                <animateTransform attributeName="transform" type="rotate"
                    from="0 300 200" to="360 300 200" dur="12s" repeatCount="indefinite"/>
            </circle>
            <rect x="260" y="140" width="80" height="120" rx="10" fill="#00eaff"/>
            <text x="300" y="320" fill="#fff" text-anchor="middle">CI/CD</text>
        </svg>
    </div>
</div>

<!-- ABOUT -->
<section id="about">
<h2>About Me</h2>
<div class="about">
    <div class="box reveal">🚀 DevOps Engineer focused on automation and scalability.</div>
    <div class="box reveal">⚙️ Strong in AWS, Kubernetes, CI/CD, IaC & Monitoring.</div>
</div>
</section>

<!-- SKILLS -->
<section id="skills">
<h2>Skills</h2>
<div class="skills">
    <div class="skill">AWS</div>
    <div class="skill">Docker</div>
    <div class="skill">Kubernetes</div>
    <div class="skill">Terraform</div>
    <div class="skill">Jenkins</div>
    <div class="skill">Ansible</div>
</div>
</section>

<!-- EXPERIENCE -->
<section id="experience">
<h2>Experience</h2>
<div class="timeline">
    <div class="entry left reveal">DevOps Intern – CI/CD Automation</div>
    <div class="entry right reveal">Cloud Engineer – AWS & Kubernetes</div>
</div>
</section>

<!-- PROJECTS -->
<section id="projects">
<h2>Projects</h2>
<div class="projects">
    <div class="project reveal">End-to-End CI/CD Pipeline</div>
    <div class="project reveal">Terraform AWS Infra</div>
    <div class="project reveal">Monitoring with Prometheus</div>
</div>
</section>

<!-- GITHUB LIVE -->
<section id="github">
<h2>Live GitHub Projects</h2>
<div class="projects" id="repos"></div>
</section>

<!-- CONTACT -->
<section id="contact" class="contact">
<h2>Hire Me</h2>
<p>Let’s build scalable systems together</p>
<button>Email Me</button>
</section>

<footer>
© 2025 DevOps Resume | Single-Page JSP Portfolio
</footer>

<script>
/* SCROLL TRIGGER (GSAP-LIKE) */
const reveals=document.querySelectorAll('.reveal');
window.addEventListener('scroll',()=>{
    reveals.forEach(el=>{
        if(el.getBoundingClientRect().top < window.innerHeight-100){
            el.classList.add('active');
        }
    });
});

/* LIVE GITHUB PROJECTS */
fetch("https://api.github.com/users/YOUR_GITHUB_USERNAME/repos")
.then(res=>res.json())
.then(data=>{
    const box=document.getElementById("repos");
    data.slice(0,6).forEach(repo=>{
        box.innerHTML+=`
        <div class="repo reveal">
            <h4>${repo.name}</h4>
            <p>${repo.description||"DevOps Project"}</p>
        </div>`;
    });
});
</script>

</body>
</html>

