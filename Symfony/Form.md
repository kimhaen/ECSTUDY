### How to Work with Form Themes

* [Form Themes][a]

[a]:https://symfony.com/doc/current/form/form_themes.html

* [Customize Form Rendering][b]

[b]:https://symfony.com/doc/current/form/form_customization.html#reference-forms-twig-form

> **Form Rendering Functions**

~~~~TWIG
{# form is a variable passed from the controller and created
  by calling to the $form->createView() method #}
{{ form(form) }}
~~~~

~~~~TWIG
{{ form_start(form) }}
    <div class="my-custom-class-for-errors">
        {{ form_errors(form) }}
    </div>

    <div class="row">
        <div class="col">
            {{ form_row(form.task) }}
        </div>
        <div class="col" id="some-custom-id">
            {{ form_row(form.dueDate) }}
        </div>
    </div>
{{ form_end(form) }}
~~~~

~~~~TWIG
<div class="form-control">
    <i class="fa fa-calendar"></i> {{ form_label(form.dueDate) }}
    {{ form_widget(form.dueDate) }}

    <small>{{ form_help(form.dueDate) }}</small>

    <div class="form-error">
        {{ form_errors(form.dueDate) }}
    </div>
</div>
~~~~
> **Form Rendering Variables**

~~~twig
{{ form_label(form.task, 'My Custom Task Label') }}
~~~

~~~~twig
{{ form_widget(form.task, {'attr': {'class': 'task_field'}}) }}
~~~~

~~~~twig
{{ form.task.vars.id }}
~~~~

* form_label(form_view, label, variables)

~~~~TWIG
{{ form_label(form.name) }}

{# The two following syntaxes are equivalent #}
{{ form_label(form.name, 'Your Name', {'label_attr': {'class': 'foo'}}) }}

{{ form_label(form.name, null, {
    'label': 'Your name',
    'label_attr': {'class': 'foo'}
}) }}

~~~~

* form_widget(form_view, variables)

~~~~TWIG
{# render a widget, but add a "foo" class to it #}
{{ form_widget(form.name, {'attr': {'class': 'foo'}}) }}
~~~~
