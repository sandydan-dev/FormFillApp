<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sandeep Dhanwate | DevOps Engineer</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r150/three.min.js"></script>
<style>
body { margin:0; overflow:hidden; background:#0b0c1f; }
#earthContainer { width: 100vw; height: 100vh; display:block; }
.info {
  position:absolute; top:20px; left:20px; color:#fff;
  font-family:Poppins,sans-serif; z-index:10;
}
</style>
</head>
<body>

<div class="info">
<h1>Sandeep Dhanwate</h1>
<p>Cloud & DevOps Engineer | CI/CD | Kubernetes | Terraform | AWS / Azure</p>
</div>

<div id="earthContainer"></div>

<script>
// Scene setup
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(40, window.innerWidth/window.innerHeight, 0.1, 1000);
camera.position.z = 4;

// Renderer
const renderer = new THREE.WebGLRenderer({antialias:true});
renderer.setSize(window.innerWidth, window.innerHeight);
document.getElementById('earthContainer').appendChild(renderer.domElement);

// Earth texture
const textureLoader = new THREE.TextureLoader();
const earthGeometry = new THREE.SphereGeometry(1,64,64);
const earthMaterial = new THREE.MeshPhongMaterial({
map: textureLoader.load('https://raw.githubusercontent.com/VirtualGlobes/earth-texture/main/earth_daymap.jpg'),
specular: new THREE.Color('grey'),
shininess:5
});
const earth = new THREE.Mesh(earthGeometry, earthMaterial);
scene.add(earth);

// Clouds
const cloudGeometry = new THREE.SphereGeometry(1.01,64,64);
const cloudMaterial = new THREE.MeshPhongMaterial({
map: textureLoader.load('https://raw.githubusercontent.com/VirtualGlobes/earth-texture/main/earth_clouds.png'),
transparent:true,
opacity:0.5
});
const clouds = new THREE.Mesh(cloudGeometry, cloudMaterial);
scene.add(clouds);

// Lights
const ambientLight = new THREE.AmbientLight(0xffffff,0.5);
scene.add(ambientLight);
const directionalLight = new THREE.DirectionalLight(0xffffff,1);
directionalLight.position.set(5,3,5);
scene.add(directionalLight);

// Satellites (DevOps tools)
const tools = ["GIT","JENKINS","DOCKER","K8S","TERRAFORM","PROM","GRAFANA"];
const satellites = [];
const satGeometry = new THREE.SphereGeometry(0.05,16,16);
const satMaterial = new THREE.MeshPhongMaterial({color:0x00eaff, shininess:10});
tools.forEach((tool,i)=>{
    const sat = new THREE.Mesh(satGeometry, satMaterial);
    const angle = (i / tools.length) * Math.PI*2;
    sat.userData = {angle:angle, radius:2, tool:tool};
    sat.position.set(Math.cos(angle)*2, Math.sin(angle)*2, 0);
    satellites.push(sat);
    scene.add(sat);
});

// Animation
function animate(){
    requestAnimationFrame(animate);
    earth.rotation.y += 0.0015;
    clouds.rotation.y += 0.002;

    satellites.forEach(sat=>{
        sat.userData.angle += 0.003; // orbit speed
        sat.position.x = Math.cos(sat.userData.angle)*sat.userData.radius;
        sat.position.y = Math.sin(sat.userData.angle)*sat.userData.radius;
    });

    renderer.render(scene, camera);
}
animate();

// Handle resize
window.addEventListener('resize',()=>{
    camera.aspect = window.innerWidth/window.innerHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(window.innerWidth, window.innerHeight);
});
</script>
</body>
</html>

