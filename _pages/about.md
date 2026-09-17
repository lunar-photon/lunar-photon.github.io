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
      <p class="intro-text">I am an MSc graduate in Physics from IIT Guwahati with a strong interest in quantum gravity. My focus has been on understanding gravity at the quantum level, the role of spacetime in encoding information, and the foundations of holography. These questions have guided my studies since my undergraduate years, and I have steadily worked to build the technical foundation needed to engage with them in a serious way.</p>
      <div class="button-row">
        <a class="btn" href="{{ base_path }}/publications/">Publications</a>
        <a class="btn" href="{{ base_path }}/portfolio/">Notes</a>
      </div>
    </div>
  </div>
</section>

<section class="section">
  <div class="section-label"><span>Background</span></div>
  <div class="about-copy">
    <p>I began studying string theory and conformal field theory during my undergraduate years, initially drawn by their mathematical structure and their role in high-energy physics. Over time, I worked through detailed derivations beyond standard coursework, including steps often omitted in standard treatments, in order to develop a more complete understanding of the formalism.</p>
    <p>This background has naturally led me toward quantum field theory in curved spacetime, inflationary cosmology, and reheating dynamics, where quantum effects and gravity interact in physically meaningful ways. I am particularly interested in how early-universe physics connects to observable signatures in the cosmic microwave background, and how different theoretical models can be constrained by data.</p>
    <p>Alongside this, I have maintained a sustained engagement with holography, black hole thermodynamics, and entanglement entropy. These subjects provide a setting where gravity, quantum theory, and information are forced into direct contact, revealing structure that is still not fully understood.</p>
  </div>
</section>

<section class="section">
  <div class="section-label"><span>Approach</span></div>
  <div class="about-copy">
    <p>I have also maintained detailed personal notes on topics in theoretical physics, including conformal field theory, cosmology, general relativity, and string theory. These were developed alongside my studies and focus on working through derivations carefully rather than accepting results as they are. A significant part of this effort has been to reconstruct derivations from standard references in a more explicit and self-contained way, particularly in areas where intermediate steps are often omitted in textbooks. The aim has been to build clarity in the structure of the theories through explicit calculation. These notes are publicly accessible and continue to evolve as my understanding deepens.</p>
    <p class="pull">What this process has made clear to me is that the difficulty in approaching these subjects is rarely about intelligence. It is about access to the right formulations and the persistence required to work through them carefully.</p>
    <p>That realization has shaped how I approach learning in theoretical physics.</p>
  </div>
</section>

<section class="section">
  <div class="section-heading">
    <div class="section-label"><span>Selected Work</span></div>
    <h2>Personal Notes</h2>
    <p>Deep-dive notes focusing on complete mathematical transparency, developed alongside coursework and research. Click a bubble to see what's inside.</p>
  </div>
  <div class="bubble-field">
    {% for post in site.portfolio %}
      <button type="button" class="bubble"
        data-title="{{ post.title | escape }}"
        data-desc="{{ post.excerpt | split: "<br" | first | strip_html | strip_newlines | escape }}"
        data-href="{{ base_path }}{{ post.url }}">{{ post.title | remove: " Notes" }}</button>
    {% endfor %}
  </div>
  <div class="section-link">
    <a class="text-link" href="{{ base_path }}/portfolio/">View all notes &rarr;</a>
  </div>
</section>

<section class="section">
  <div class="section-label"><span>Right Now</span></div>
  <div class="about-copy">
    <p>Currently working on Dirac brackets and quantum field theory in curved spacetime, in collaboration with Dr. Rajesh Karmakar at Shanghai University. Alongside that, I keep adding to the notes above as my own understanding of these subjects deepens.</p>
  </div>
</section>
