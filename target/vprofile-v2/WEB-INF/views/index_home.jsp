<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HKH Infotech - DevOps Excellence</title>
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
  </head>
  <body>
    <!-- Modern Navbar -->
    <nav class="modern-navbar" id="navbar">
      <div class="container-fluid">
        <a class="navbar-brand" href="${contextPath}/index">
          <i class="fas fa-rocket"></i> HKH Infotech
        </a>
        <ul class="nav-links">
          <li><a href="#technologies">Technologies</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
          <li>
            <a href="${contextPath}" class="btn-modern btn-outline">Login</a>
          </li>
          <li>
            <a href="${contextPath}/registration" class="btn-modern btn-primary"
              >Sign Up</a
            >
          </li>
        </ul>
      </div>
    </nav>

    <!-- Hero Section -->
    <section class="modern-hero">
      <div class="hero-content">
        <h1 class="hero-title">Transform Your DevOps Journey</h1>
        <p class="hero-subtitle">
          Empowering businesses with cutting-edge technology solutions and
          unparalleled DevOps expertise
        </p>
        <div
          style="
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
          "
        >
          <a href="#technologies" class="btn-modern btn-primary"
            >Explore Technologies</a
          >
          <a href="#contact" class="btn-modern btn-outline">Get in Touch</a>
        </div>
      </div>
    </section>

    <!-- Technologies Section -->
    <section class="modern-section" id="technologies">
      <h2 class="section-title">Our Technology Stack</h2>
      <div class="tech-grid">
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/Ansible_logo.png"
            alt="Ansible"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Ansible
          </h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/aws.png"
            alt="AWS"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">AWS</h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/git.jpg"
            alt="Git"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">Git</h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/jenkins.png"
            alt="Jenkins"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Jenkins
          </h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/docker.png"
            alt="Docker"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Docker
          </h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/puppet.jpg"
            alt="Puppet"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Puppet
          </h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/Vagrant.png"
            alt="Vagrant"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Vagrant
          </h4>
        </div>
        <div class="tech-card">
          <img
            src="${contextPath}/resources/Images/technologies/python-logo.png"
            alt="Python"
          />
          <h4 style="color: #fff; margin-top: 1rem; font-weight: 600">
            Python
          </h4>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section class="modern-section" id="about">
      <h2 class="section-title">About HKH Infotech</h2>
      <div class="about-content">
        <p>
          <strong>HKH Infotech</strong> is a dynamic software company dedicated
          to delivering innovative technology solutions. Founded with a mission
          to leverage cutting-edge technology and unparalleled expertise, we
          specialize in creating high-quality software solutions that drive
          business success.
        </p>
        <p>
          Our team is led by seasoned DevOps experts with many years of industry
          experience. They bring a wealth of knowledge in automating and
          optimizing the software development lifecycle, ensuring that our
          projects are efficient, reliable, and scalable.
        </p>
        <p>
          At HKH Infotech, we focus on understanding our clients' unique needs
          and providing tailored solutions that meet their objectives. Whether
          it's custom software development, system integration, or ongoing
          support, we are committed to excellence and client satisfaction.
        </p>
        <p>
          With a commitment to staying ahead of technological trends and a
          passion for innovation, HKH Infotech is your trusted partner in
          navigating the digital landscape and achieving your business goals.
        </p>
        <div
          style="
            margin-top: 2rem;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
          "
        >
          <p>
            <i
              class="fas fa-map-marker-alt"
              style="color: #4facfe; margin-right: 0.5rem"
            ></i>
            <strong>Address:</strong> Punjagutta Colony Ameerpet, Hyderabad
          </p>
          <p>
            <i
              class="fas fa-phone"
              style="color: #4facfe; margin-right: 0.5rem"
            ></i>
            <strong>Phone:</strong> +91-8001234567
          </p>
          <p>
            <i
              class="fas fa-envelope"
              style="color: #4facfe; margin-right: 0.5rem"
            ></i>
            <strong>Email:</strong> contact@hkhinfotech.com
          </p>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section class="modern-section" id="contact">
      <h2 class="section-title">Get In Touch</h2>
      <div class="contact-form">
        <p
          style="
            text-align: center;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 2rem;
          "
        >
          Let's get in touch and talk about your next project
        </p>
        <form action="/action_page.php" method="POST" class="modern-form">
          <div class="form-group">
            <label class="form-label">Name</label>
            <input
              class="form-input"
              type="text"
              placeholder="Your name"
              required
              name="Name"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Email</label>
            <input
              class="form-input"
              type="email"
              placeholder="your.email@example.com"
              required
              name="Email"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Subject</label>
            <input
              class="form-input"
              type="text"
              placeholder="What's this about?"
              required
              name="Subject"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Message</label>
            <textarea
              class="form-input"
              placeholder="Your message here..."
              required
              name="Comment"
              rows="5"
            ></textarea>
          </div>
          <button
            class="btn-modern btn-primary"
            type="submit"
            style="width: 100%"
          >
            <i class="fas fa-paper-plane"></i> Send Message
          </button>
        </form>
      </div>
    </section>

    <!-- Footer -->
    <footer
      style="
        background: rgba(0, 0, 0, 0.3);
        padding: 2rem;
        text-align: center;
        color: rgba(255, 255, 255, 0.6);
        margin-top: 4rem;
      "
    >
      <p>
        &copy; 2024 HKH Infotech. All rights reserved. | Built with
        <i class="fas fa-heart" style="color: #ef4444"></i> using modern web
        technologies
      </p>
    </footer>

    <script>
      // Navbar scroll effect
      window.addEventListener("scroll", function () {
        const navbar = document.getElementById("navbar");
        if (window.scrollY > 100) {
          navbar.classList.add("scrolled");
        } else {
          navbar.classList.remove("scrolled");
        }
      });

      // Smooth scroll for anchor links
      document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
        anchor.addEventListener("click", function (e) {
          e.preventDefault();
          const target = document.querySelector(this.getAttribute("href"));
          if (target) {
            target.scrollIntoView({
              behavior: "smooth",
              block: "start",
            });
          }
        });
      });
    </script>
  </body>
</html>
