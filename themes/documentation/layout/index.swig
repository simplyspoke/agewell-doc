<!DOCTYPE html>
<html>
<head>
  <meta charSet='utf-8' />
  <title>{{config.title + ' - ' + page.title}}</title>
  <link href='https://cdnjs.cloudflare.com/ajax/libs/normalize/4.0.0/normalize.min.css' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700' rel='stylesheet' type='text/css'>
  <link href='{{ url_for("css/docs.css") }}' rel='stylesheet'>
</head>
<body>
  <div class='menu'>
    <div class='logo'>
      <img src='{{ url_for(theme.logo) }}' alt='' />
      Documentation
    </div>
    <nav class='menu-nav'>
      {% for section in site.data.nav %}
        <ul class='nav'>
          <span>{{ section.title }}</span>
          <ul class='nav'>
            {% for item in section.items %}
              <li>
                <a href='{{item.href || url_for(item.id + ".html") }}'{% if item.id == page.id %} class='active'{% endif %}>{{item.title}}</a>
              </li>
            {% endfor %}
          </ul>
        </ul>
      {% endfor %}
    </nav>
    <div class='footer'>
      <a class='link' href='https://agewell.herokuapp.com/' target='_blank'>
        Project in testing
      </a>
      <a class='link' href='https://github.com/AgeWell/agewell-core' target='_blank'>
        Project on github
      </a>
    </div>
  </div>
  <div class='page'>
    <div class='page-content'>
      <h1>What is this?</h1>
      A management solution for organizations that connect older adults and caregivers with services that support healthy aging and independence.
    </div>
  </div>
  <div class='switch-page'>
    {% if page.prev %}
      <a class='previous' href='{{ url_for(page.prev) }}'>Previous</a>
    {% endif %}
    {% if page.next %}
      <a class='next' href='{{ url_for(page.next) }}'>Next</a>
    {% endif %}
  </div>
</body>
</html>
