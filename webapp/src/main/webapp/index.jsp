<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%-- DevOps Engineer Portfolio Home Page (uses external CSS) --%>
<%
    // Optional: override these by setting request attributes (e.g., request.setAttribute("fullName","Alice") in a servlet)
    String fullName = request.getAttribute("fullName") != null ? (String) request.getAttribute("fullName") : "Your Name";
    String title = request.getAttribute("title") != null ? (String) request.getAttribute("title") : "DevOps Engineer";
    String location = request.getAttribute("location") != null ? (String) request.getAttribute("location") : "Remote / City, Country";
    String email = request.getAttribute("email") != null ? (String) request.getAttribute("email") : "you@example.com";
    String phone = request.getAttribute("phone") != null ? (String) request.getAttribute("phone") : "+1 (555) 555-5555";
%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><%= fullName %> — <%= title %></title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUa6mY5h2KQ6lLrFQdKQ7Q4j2p3X1pWv6jz4yF1YFZxJg6Q2qZB7C6EkgXG5" crossorigin="anonymous">

  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
        integrity="sha512-yH6fYkK0z6qf1kQm6V0Jw1pJzv2uQ6g1xw2qKf6B7bX9t3pVxH9R2YJ6h4z5P2sT" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- Custom stylesheet (place this file at webapp/assets/css/styles.css) -->
  <link rel="stylesheet" href="/assets/css/styles.css">
</head>
<body>
  <div class="container py-4">
    <header class="d-flex align-items-center justify-content-between mb-4">
      <div>
        <a href="/" class="text-decoration-none">
          <h3 class="m-0"><strong><%= fullName %></strong></h3>
          <div class="text-muted small"><%= title %> • <%= location %></div>
        </a>
      </div>
      <div class="d-none d-md-flex gap-3">
        <a href="#projects" class="btn btn-outline-primary btn-sm">Projects</a>
        <a href="#contact" class="btn btn-primary btn-sm">Contact</a>
      </div>
    </header>

    <main>
      <section class="hero mb-4 p-4">
        <div class="row g-3 align-items-center">
          <div class="col-md-8">
            <h1 class="display-6 fw-bold">Hello — I'm <span class="text-primary"><%= fullName %></span></h1>
            <p class="lead mb-2">I build reliable, scalable systems and CI/CD pipelines that help teams ship faster and operate securely — from infrastructure as code and Kubernetes to monitoring and automation.</p>
            <div class="mb-3">
              <span class="chip me-2"><i class="fa-solid fa-cloud"></i> Cloud-native</span>
              <span class="chip me-2"><i class="fa-solid fa-gears"></i> Automation</span>
              <span class="chip"><i class="fa-solid fa-shield-halved"></i> Security-minded</span>
            </div>

            <div class="d-flex gap-2">
              <a href="#projects" class="btn btn-primary btn-lg"><i class="fa-solid fa-code-branch me-2"></i> View Projects</a>
              <a href="#contact" class="btn btn-outline-secondary btn-lg"><i class="fa-solid fa-envelope me-2"></i> Get in touch</a>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <!-- Avatar placeholder -->
            <div class="avatar-placeholder">
              <h2 class="avatar-initials">SD</h2>
            </div>
            <div class="mt-3 text-muted small">
              <div><i class="fa-solid fa-envelope me-2"></i><a href="mailto:<%= email %>"><%= email %></a></div>
              <div><i class="fa-solid fa-phone me-2"></i><%= phone %></div>
            </div>
          </div>
        </div>
      </section>

      <section id="about" class="mb-5">
        <h4 class="mb-3">About</h4>
        <div class="card p-3">
          <div class="card-body">
            <p>I have experience designing and operating production systems using Docker, Kubernetes, Terraform, and cloud providers (AWS/GCP/Azure). I focus on automation, observability (Prometheus, Grafana, ELK), secure CI/CD (GitHub Actions, Jenkins, Tekton), and cost-aware architecture. I enjoy solving reliability and scaling problems while enabling developer productivity.</p>
            <div class="mt-3">
              <span class="skill-badge">Kubernetes</span>
              <span class="skill-badge">Terraform</span>
              <span class="skill-badge">Docker</span>
              <span class="skill-badge">AWS</span>
              <span class="skill-badge">GitOps</span>
              <span class="skill-badge">Prometheus</span>
              <span class="skill-badge">CI/CD</span>
            </div>
          </div>
        </div>
      </section>

      <section id="projects" class="mb-5">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h4 class="m-0">Selected Projects</h4>
          <a href="/projects" class="small text-decoration-none d-none d-md-inline">See all →</a>
        </div>

        <div class="row g-3">
          <div class="col-md-6">
            <div class="card project-card p-3 h-100">
              <div class="d-flex justify-content-between">
                <h5 class="mb-1">K8s GitOps Platform</h5>
                <small class="text-muted">Ops / Platform</small>
              </div>
              <p class="text-muted small mb-2">Built a multi-cluster GitOps platform using ArgoCD and Flux, integrated with CI pipelines and automated secrets handling.</p>
              <div>
                <span class="badge bg-light text-dark me-1">ArgoCD</span>
                <span class="badge bg-light text-dark me-1">Terraform</span>
                <span class="badge bg-light text-dark">Helm</span>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card project-card p-3 h-100">
              <div class="d-flex justify-content-between">
                <h5 class="mb-1">Cost-aware Infra Automation</h5>
                <small class="text-muted">Cloud / IaC</small>
              </div>
              <p class="text-muted small mb-2">Automated resource provisioning with Terraform and implemented policies that reduced monthly cloud spend via rightsizing and scheduled environments.</p>
              <div>
                <span class="badge bg-light text-dark me-1">AWS</span>
                <span class="badge bg-light text-dark me-1">Terraform</span>
                <span class="badge bg-light text-dark">Lambda</span>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card project-card p-3 h-100">
              <div class="d-flex justify-content-between">
                <h5 class="mb-1">Secure CI/CD Pipelines</h5>
                <small class="text-muted">CI/CD</small>
              </div>
              <p class="text-muted small mb-2">Designed pipelines with policy checks, SBOM generation, and automated vulnerability scanning before deploys.</p>
              <div>
                <span class="badge bg-light text-dark me-1">GitHub Actions</span>
                <span class="badge bg-light text-dark me-1">Trivy</span>
                <span class="badge bg-light text-dark">SBOM</span>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card project-card p-3 h-100">
              <div class="d-flex justify-content-between">
                <h5 class="mb-1">Observability Stack</h5>
                <small class="text-muted">Monitoring</small>
              </div>
              <p class="text-muted small mb-2">Implemented Prometheus + Grafana + Loki to improve SLO monitoring and accelerate incident response.</p>
              <div>
                <span class="badge bg-light text-dark me-1">Prometheus</span>
                <span class="badge bg-light text-dark me-1">Grafana</span>
                <span class="badge bg-light text-dark">Loki</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="experience" class="mb-5">
        <h4 class="mb-3">Experience</h4>
        <div class="list-group">
          <div class="list-group-item">
            <div class="d-flex w-100 justify-content-between">
              <h5 class="mb-1">Senior DevOps Engineer — Acme Cloud</h5>
              <small class="text-muted">2022 — Present</small>
            </div>
            <p class="mb-1 small text-muted">Led platform engineering initiatives, migrated critical workloads to Kubernetes, and introduced GitOps workflows that improved release safety and velocity.</p>
          </div>
          <div class="list-group-item">
            <div class="d-flex w-100 justify-content-between">
              <h5 class="mb-1">DevOps Engineer — ExampleCorp</h5>
              <small class="text-muted">2019 — 2022</small>
            </div>
            <p class="mb-1 small text-muted">Automated deployments and built monitoring/alerting solutions to reduce MTTR and increase system availability.</p>
          </div>
        </div>
      </section>

      <section id="contact" class="mb-5">
        <h4 class="mb-3">Contact</h4>
        <div class="row">
          <div class="col-md-6">
            <div class="card p-3">
              <div class="card-body">
                <form method="post" action="/contact">
                  <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input id="name" name="name" class="form-control" required>
                  </div>
                  <div class="mb-3">
                    <label for="emailInput" class="form-label">Email</label>
                    <input id="emailInput" name="email" type="email" class="form-control" required>
                  </div>
                  <div class="mb-3">
                    <label for="message" class="form-label">Message</label>
                    <textarea id="message" name="message" rows="4" class="form-control" required></textarea>
                  </div>
                  <button class="btn btn-primary" type="submit"><i class="fa-solid fa-paper-plane me-2"></i>Send</button>
                </form>
                <small class="d-block mt-2 text-muted">Or email me directly at <a href="mailto:<%= email %>"><%= email %></a></small>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card p-3 h-100">
              <div class="card-body">
                <h6>Quick Links</h6>
                <ul class="list-unstyled">
                  <li><a href="https://github.com/" target="_blank" rel="noopener">GitHub</a></li>
                  <li><a href="https://www.linkedin.com/" target="_blank" rel="noopener">LinkedIn</a></li>
                  <li><a href="/resume.pdf" target="_blank">Download Resume (PDF)</a></li>
                </ul>
                <h6 class="mt-3">Availability</h6>
                <p class="small text-muted">Open to full-time roles, contract/consulting, and remote-first opportunities.</p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer class="text-center text-muted">
      <div class="container">
        <small>&copy; <%= java.time.Year.now() %> <strong><%= fullName %></strong> — Built with care • <a href="#top">Back to top</a></small>
      </div>
    </footer>
  </div>

  <!-- Bootstrap JS (Bundle includes Popper) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-whatever" crossorigin="anonymous"></script>
</body>
</html>
