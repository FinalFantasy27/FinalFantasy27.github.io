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

<h2 id="nijisanji-favorites">彩虹社（Nijisanji）推荐收藏夹</h2>

- 彩虹GTA：[https://b23.tv/KEJYiYz](https://b23.tv/KEJYiYz)
- 3D精彩大杂烩：[https://b23.tv/G9Tb60d](https://b23.tv/G9Tb60d)
- 莉泽安（CP）：[https://b23.tv/Pvn7BXQ](https://b23.tv/Pvn7BXQ)、[https://b23.tv/JWzeRSZ](https://b23.tv/JWzeRSZ)
- 德龙莎拉（CP）：[https://b23.tv/Ijp8av7](https://b23.tv/Ijp8av7)、[https://b23.tv/dskXgAv](https://b23.tv/dskXgAv)、[https://b23.tv/DipZd9l](https://b23.tv/DipZd9l)
