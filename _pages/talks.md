---
layout: page
title: talks
permalink: /talks/
nav: true
nav_order: 3
---

{% assign talks = site.talks | sort: "date" | reverse %}

{% for talk in talks %}
## {{ talk.title }}

<p>
  <strong>{{ talk.event }}</strong><br>
  {{ talk.location }} · {{ talk.date | date: "%-d %B %Y" }}
</p>

{% if talk.event_url %}
<a href="{{ talk.event_url }}">Event page</a>
{% endif %}

{% if talk.program_url %}
<a href="{{ talk.program_url }}">Programme</a>
{% endif %}

{% if talk.abstract %}
<details>
<summary>Abstract</summary>

{{ talk.abstract | markdownify }}

</details>
{% else %}
{{ talk.content }}
{% endif %}

{% if talk.slides %}
<a href="{{ talk.slides | relative_url }}">Slides</a>
{% endif %}

{% endfor %}
