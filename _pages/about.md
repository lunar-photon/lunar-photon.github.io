---
permalink: /
layout: home
redirect_from:
  - /about/
  - /about.html
---

<section class="hero-section">
  <div class="hero-grid">
    <img class="hero-portrait" src="{{ base_path }}/images/profile-hero.jpg" alt="{{ site.author.name }}">
    <div class="hero-copy">
      <div class="section-label hero-label"><span>Welcome</span></div>
      <h1>{{ site.author.name }}</h1>
      <p class="intro-text">I study questions at the intersection of cosmology, quantum field theory, and gravity. My research interests include the cosmic microwave background (CMB), early universe cosmology, field theory, and black holes. I am particularly interested in the quantum mechanical frameworks used to describe the early universe and in how its physics can leave observable signatures in the CMB.</p>
      <div class="button-row">
        <a class="btn" href="{{ base_path }}/publications/">Publications</a>
        <a class="btn" href="{{ base_path }}/portfolio/">Notes</a>
      </div>
    </div>
  </div>
</section>

<section class="section">
  <div class="section-label"><span>Research Interests</span></div>
  <div class="about-copy">
    <p>My interests range from quantum fields in curved spacetime and cosmological correlation functions to conformal symmetry and black hole thermodynamics. I am drawn to the connection between the quantum description of the early universe and the cosmological observations that can test it.</p>
    <p>I completed an MSc in Physics at IIT Guwahati. My studies have also led me to string theory, holography, and the role of entanglement in quantum field theory and gravity.</p>
  </div>
</section>

<section class="section">
  <div class="section-label"><span>Notes</span></div>
  <div class="about-copy">
    <p>I write notes as I learn, working through calculations and intermediate steps in subjects ranging from cosmology and quantum mechanics to conformal field theory and general relativity. They are available to read and download, and corrections are welcome.</p>
  </div>
</section>

<section class="section">
  <div class="section-heading">
    <div class="section-label"><span>Selected Work</span></div>
    <h2>Personal Notes</h2>
    <p>Personal notes on theoretical physics and cosmology, with detailed derivations.</p>
  </div>
  <div class="course-grid">
    {% for post in site.portfolio %}
      <div class="card course-card">
        <h3><a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a></h3>
        <p>{{ post.excerpt | split: "<br" | first | strip_html }}</p>
      </div>
    {% endfor %}
  </div>
  <div class="section-link">
    <a class="text-link" href="{{ base_path }}/portfolio/">View all notes &rarr;</a>
  </div>
</section>

<section class="section">
  <div class="section-heading">
    <div class="section-label"><span>Reading List</span></div>
    <h2>The Stack</h2>
    <p>Built over several years, starting from scratch. These are the books that got me here.</p>
  </div>
  <div class="card book-card">
    <div class="book-grid">
      <div class="book-item">Quantum Mechanics: Fundamentals <span class="book-author">Gottfried, Yan</span></div>
      <div class="book-item">Nonlinear Dynamics and Chaos <span class="book-author">Strogatz</span></div>
      <div class="book-item">Quantization of Gauge Systems <span class="book-author">Henneaux, Teitelboim</span></div>
      <div class="book-item">Supersymmetry &amp; Supergravity <span class="book-author">Buchbinder, Kuzenko</span></div>
      <div class="book-item">Lie Algebras in Particle Physics <span class="book-author">Georgi</span></div>
      <div class="book-item">Gauge Field Theory <span class="book-author">Bailin, Love</span></div>
      <div class="book-item">Gravitation and Cosmology <span class="book-author">Weinberg</span></div>
      <div class="book-item">Finite Temperature Field Theory <span class="book-author">Ashok Das</span></div>
      <div class="book-item">Lie Groups &amp; Applications <span class="book-author">Gilmore</span></div>
      <div class="book-item">Differential Topology &amp; QFT <span class="book-author">Nash</span></div>
      <div class="book-item">Mathematical Theory of Black Holes <span class="book-author">Chandrasekhar</span></div>
      <div class="book-item">The Dreams That Stuff Is Made Of <span class="book-author">Hawking</span></div>
      <div class="book-item">Spacetime and Geometry <span class="book-author">Carroll</span></div>
      <div class="book-item">Covariant Quantum Gravity <span class="book-author">Percacci</span></div>
      <div class="book-item">Advanced Quantum Mechanics <span class="book-author">Sakurai</span></div>
      <div class="book-item">Mathematical Methods for Physicists <span class="book-author">Arfken et al.</span></div>
      <div class="book-item">Introduction to Elementary Particles <span class="book-author">Griffiths</span></div>
      <div class="book-item">Fluid Mechanics <span class="book-author">Lifshitz, Pitaevskii</span></div>
      <div class="book-item">Quantum Computation &amp; Info <span class="book-author">Nielsen, Chuang</span></div>
      <div class="book-item">Quantum Theory of Fields Vol I-III <span class="book-author">Weinberg</span></div>
      <div class="book-item">Topology <span class="book-author">Munkres</span></div>
      <div class="book-item">Introduction to Electrodynamics <span class="book-author">Griffiths</span></div>
      <div class="book-item">Classical Electrodynamics <span class="book-author">Greiner</span></div>
      <div class="book-item">Classical Mechanics <span class="book-author">Goldstein et al.</span></div>
      <div class="book-item">Statistical Mechanics <span class="book-author">Pathria, Beale</span></div>
      <div class="book-item">Physics of Neutrino Interactions <span class="book-author">Athar, Singh</span></div>
      <div class="book-item">QFT and the Standard Model <span class="book-author">Schwartz</span></div>
      <div class="book-item">Conformal Field Theory <span class="book-author">Di Francesco et al.</span></div>
      <div class="book-item">String Theory Vol I-II <span class="book-author">Polchinski</span></div>
      <div class="book-item">Primordial Cosmology <span class="book-author">Peter, Uzan</span></div>
      <div class="book-item">Gravitation <span class="book-author">Misner, Thorne, Wheeler</span></div>
    </div>
  </div>
</section>
