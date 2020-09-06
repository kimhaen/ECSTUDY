**TWIG**
=======

The if statement in Twig
------------

~~~~twig
{% if users %}
    <ul>
        {% for user in users %}
            <li>{{ user.username|e }}</li>
        {% endfor %}
    </ul>
{% endif %}
~~~~

~~~~twig
{% if product.stock > 10 %}
   Available
{% elseif product.stock > 0 %}
   Only {{ product.stock }} left!
{% else %}
   Sold-out!
{% endif %}
~~~~

display parameters value (POST, GET, SESSION) using twig template
--------

For $_POST variables use this :
~~~twig
{{ app.request.parameter.get("page") }}
~~~
For $_GET variables use this :
~~~twig
{{ app.request.query.get("page") }}
~~~
For $_COOKIE variables use this :
~~~twig
{{ app.request.cookies.get("page") }}
~~~
For $_SESSION variables use this :
~~~twig
{{ app.request.session.get("page") }}
~~~
NULL CHECK
-------
[Ref][a]

[a]:https://stackoverflow.com/questions/3264889/how-to-check-for-null-in-twig
~~~twig
{% if var is null %}
    {# do something #}
{% endif %}
~~~
~~~twig
{% if var is not defined %}
    {# do something #}
{% endif %}
~~~
Form Rendering
----
[Ref][b]

[b]:https://symfony.com/doc/current/form/form_customization.html
