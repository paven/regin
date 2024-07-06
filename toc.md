---
layout: page
title: Inte menat för användare
---

{% for p in site.pages %}
    {{ p.url  }}
{% endfor %}

<ul>
  {% for item in site.data.toc %}
    {% for doc in item.docs %}
      {% assign doc_page = site.pages | where: "url", "/" | where: "name", doc | append: ".md" | first %}
      <li>
        {% if doc_page %}
          <a href="{{ site.baseurl }}/{{ doc }}/#content">{{ doc_page.title }}</a>
        {% else %}
          <a href="{{ site.baseurl }}/{{ doc }}/#content">{{ doc }}</a>
        {% endif %}
      </li>
    {% endfor %}
  {% endfor %}
</ul>
