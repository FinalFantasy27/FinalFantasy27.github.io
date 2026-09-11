---
layout: page
title: gallery
permalink: /gallery/
nav: true
nav_order: 7
---

<div class="photo-gallery">
  {% for photo in site.data.gallery %}
    <figure>
      <a href="{{ '/assets/img/photos/' | append: photo.file | relative_url }}">
        <img src="{{ '/assets/img/photos/' | append: photo.file | relative_url }}" alt="Gallery image" loading="lazy">
      </a>
      {% if photo.show_caption %}
        <figcaption>{{ photo.caption }}</figcaption>
      {% endif %}
    </figure>
  {% endfor %}
</div>
