<!DOCTYPE html>
<html>
<head>
<title>CI/CD Pipeline</title>
<style>
body {
    font-family: Poppins;
    background: linear-gradient(135deg,#1f4037,#99f2c8);
    color: #000;
    padding: 60px;
}
.step {
    padding: 20px;
    background: white;
    border-radius: 12px;
    margin-bottom: 15px;
    animation: pop 0.8s ease;
}
@keyframes pop {
    from { transform: scale(0.8); opacity: 0; }
    to { transform: scale(1); opacity: 1; }
}
</style>
</head>

<body>

<h1>CI/CD Pipeline Automation</h1>

<div class="step">1️⃣ Code Commit → GitHub</div>
<div class="step">2️⃣ Jenkins Build & Test</div>
<div class="step">3️⃣ Docker Image Creation</div>
<div class="step">4️⃣ Push to Registry</div>
<div class="step">5️⃣ Kubernetes Deployment</div>
<div class="step">6️⃣ Monitoring & Alerts</div>

<a href="index.jsp">← Back</a>

</body>
</html>

