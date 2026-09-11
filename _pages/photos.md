---
layout: page
title: photos
permalink: /photos/
nav: true
nav_order: 6
---

<div class="photo-gallery">
  {% for photo in site.data.photos %}
    <figure>
      <a href="{{ '/assets/img/photos/' | append: photo.file | relative_url }}">
        <img src="{{ '/assets/img/photos/' | append: photo.file | relative_url }}" alt="{{ photo.caption }}" loading="lazy">
      </a>
      <figcaption>{{ photo.caption }}</figcaption>
    </figure>
  {% endfor %}
</div>
