<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DevOps Hub | Home</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<style>
body {
    margin: 0;
    font-family: Poppins, sans-serif;
    background: linear-gradient(135deg,#0f2027,#203a43,#2c5364);
    color: #fff;
    overflow-x: hidden;
}

/* NAVBAR */
.nav {
    display: flex;
    justify-content: space-between;
    padding: 20px 60px;
}
.nav a {
    color: #fff;
    text-decoration: none;
    margin-left: 25px;
}
.nav a:hover { color: #00eaff; }

/* HERO */
.hero {
    text-align: center;
    padding: 80px 20px;
    animation: fadeIn 1.5s ease;
}
.hero h1 span { color: #00eaff; }

/* CARDS */
.cards {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-top: 60px;
}
.card {
    width: 250px;
    padding: 30px;
    background: rgba(255,255,255,0.1);
    border-radius: 20px;
    text-align: center;
    transition: 0.4s;
    animation: float 4s infinite;
}
.card:hover {
    transform: translateY(-20px) scale(1.05);
    background: rgba(0,234,255,0.2);
}

/* ANIMATIONS */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}
@keyframes float {
    0%,100% { transform: translateY(0); }
    50% { transform: translateY(15px); }
}

.footer {
    margin-top: 80px;
    text-align: center;
    opacity: 0.7;
}
</style>
</head>

<body>

<div class="nav">
    <h2>DevOpsHub</h2>
    <div>
        <a href="index.jsp">Home</a>
        <a href="tools.jsp">Tools</a>
        <a href="cicd.jsp">CI/CD</a>
        <a href="contact.jsp">Contact</a>
    </div>
</div>

<div class="hero">
    <h1>Automate Everything with <span>DevOps</span></h1>
    <p>CI/CD • Cloud • Containers • Monitoring • Security</p>
</div>

<div class="cards">
    <div class="card">
        <h3>CI/CD</h3>
        <p>Automated build, test & deploy pipelines.</p>
    </div>
    <div class="card">
        <h3>Containers</h3>
        <p>Docker & Kubernetes based deployments.</p>
    </div>
    <div class="card">
        <h3>Cloud</h3>
        <p>AWS infrastructure automation.</p>
    </div>
</div>

<div class="footer">
    © 2025 DevOpsHub | JSP & Tomcat
</div>

</body>
</html>

