---
layout: default
title: "CV"
permalink: /cv/
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* M.Sc. Physics, Indian Institute of Technology Guwahati (IITG), Assam, India, 2025 (GPA: 8.65/10)
  * Thesis: *From Quantum Fields to Cosmic Structures: Tracing the Early Universe through Correlation Functions*
  * Supervisor: Prof. Dr. Debaprasad Maity
  * Focus: Particle production during inflation, correlation functions, cosmological observables
* B.Sc. Physics, Savitribai Phule Pune University, Maharashtra, India, 2023 (GPA: 9.38/10)
  * Thesis: *Non-Commutative Geometry as Quantization of Spacetime*
  * Supervisor: Prof. Lalita Rane
  * Graduated among top 5% of class

Research experience
======
* January 2026 - June 2026: Dirac Bracket and QFT in Curved Spacetime
  * Shanghai University, China
  * Collaborator: Dr. Rajesh Karmakar
  * Research focus: Quantum field theory in curved spacetime; black hole backgrounds; vacuum structure
  * Skills: QFT in curved spacetime, hidden symmetries, black hole physics, constrained Hamiltonian dynamics
  * Methodology: Analytical study of field dynamics in curved spacetime, including basis construction via Löwdin orthogonalization and constrained systems analysis using Dirac-type methods
  * Outcome: C. Prakash & R. Karmakar, ["Canonical quantization of massive vector field in Schwarzschild black hole background"](/publication/2026-01-01-canonical-quantization-massive-vector-field-schwarzschild), *Phys. Rev. D* **114**, 065013 (2026)

* Summer 2025 - December 2025: Non-relativistic Limit of AdS/CFT in Momentum Space
  * Indian Institute of Technology Mandi, Himachal Pradesh, India
  * Guide: Dr. Nirmalya Kajuri
  * Research focus: Studying the Galilean Conformal Algebra in momentum space to deduce constraints on relativistic AdS/CFT limits
  * Skills: Bootstrap techniques, conformal Ward identities, Wigner-Inönü contraction
  * Methodology: Analyzed the Galilean Conformal Algebra (GCA) via Wigner-Inönü contraction; derived generators in position and momentum space; deduced and solved Ward identities for two- and three-point functions

* July 2024 - April 2025: Cosmological Correlations during Reheating
  * Indian Institute of Technology Guwahati, Assam, India
  * Guide: Prof. Dr. Debaprasad Maity
  * Research focus: Cosmological collider physics and early-universe particle production
  * Skills: QFT in curved spacetime, Schwinger-Keldysh formalism, cosmological perturbation theory, numerical methods, Python
  * Methodology: Worked on evolving cosmological correlators from the end of inflation to the CMB sky, particle production, and CMB effects

Skills
======
* Physics
  * Quantum Field Theory in Curved Spacetime
  * Cosmological Perturbation Theory
  * Effective Field Theory & Schwinger-Keldysh Formalism
  * Constrained Hamiltonian Systems
  * Black Hole Quantum Physics
  * Conformal Symmetry and Ward Identities
* Computational
  * Python
  * C++
  * Fortran
  * Mathematica

Publications
======
<ol>
  {% for post in site.publications reversed %}
    <li>{{ post.citation }} <a href="{{ post.paperurl }}">[arXiv]</a>{% if post.doi %} <a href="{{ post.doi }}">[DOI]</a>{% endif %}</li>
  {% endfor %}
</ol>

Talks
======
<ul>
  {% for post in site.talks reversed %}
    <li>{{ post.date | date: "%Y" }} &middot; <em>{{ post.title }}</em> &mdash; {{ post.type }}, {{ post.venue }}{% if post.location %}, {{ post.location }}{% endif %}</li>
  {% endfor %}
</ul>
  
Conferences and schools
======
* Loop the Loop Workshop (2024): Self-force and loop corrections in GR
* GIAN Course on Standard Model EFT (2024)
* IUCSS Summer School (2021): Lorentz/CPT violation
* String 2021 Conference

Outreach
======
* Gave a Zoom talk on arXiv:2603.24635 at the Swansea Cosmology Group
* Maintains detailed Conformal Field Theory, String Theory and Cosmology notes, publicly available (see [Notes]({{ base_path }}/portfolio/))
* Presented Black Hole Entropy work at the Zonal Level Aavishkar research event
* First prize in poster competition, Pune University

References
======
* Dr. Nirmalya Kajuri, Assistant Professor, School of Physical Sciences, Indian Institute of Technology Mandi &mdash; nirmalya@iitmandi.ac.in
* Prof. Debaprasad Maity, Professor, Department of Physics, Indian Institute of Technology Guwahati &mdash; debu@iitg.ac.in
* Prof. Ashwini Kumar Sharma, Professor, Department of Physics, Indian Institute of Technology Guwahati &mdash; aksharma@iitg.ac.in
