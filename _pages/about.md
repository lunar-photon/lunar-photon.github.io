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

<div class="about-copy home-story">
  <p>My interest in these questions grew through studying quantum field theory, general relativity, string theory, and conformal field theory. During my MSc in Physics at IIT Guwahati, I explored the connection between quantum fields and the evolution of the early universe, and how that history might be reflected in cosmological observations.</p>
  <p>That interest extends to quantum fields in curved spacetime, cosmological correlation functions, and black hole thermodynamics. I am also drawn to holography and the role of entanglement in field theory and gravity. Together, these subjects offer different ways to think about the relationship between quantum physics and spacetime.</p>
  <p>Along the way, I have written notes to work through calculations and the steps between them. They cover subjects from cosmology and quantum mechanics to conformal field theory and general relativity. You can explore them below, and corrections are always welcome.</p>
</div>

<section class="section">
  <div class="section-heading">
    <div class="section-label"><span>Selected Work</span></div>
    <h2>Personal Notes</h2>
    <p>Personal notes on theoretical physics and cosmology, with detailed derivations. Click a bubble to learn more.</p>
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
