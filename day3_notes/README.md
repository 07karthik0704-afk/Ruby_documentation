# Rails ERB, Routes, and Naming Conventions --- Beginner Notes

This file explains:

-   ERB syntax in Rails views\
-   resources vs resource in routes\
-   Convention over Configuration in Rails

------------------------------------------------------------------------

## 1. ERB in Rails Views

Rails view files end with:

.html.erb

This means HTML + Ruby together.

------------------------------------------------------------------------

### \<% %\> → Run Ruby logic (NO output)

Used for:

-   loops\
-   conditions\
-   control flow

Example:

``` erb
<% @students.each do |student| %>
<% end %>
```

Example:

``` erb
<% if student.age > 18 %>
<% end %>
```

------------------------------------------------------------------------

### \<%= %\> → Run Ruby AND print result

Used when something should appear on the page.

Example:

``` erb
<%= student.name %>
<%= student.age %>
<%= notice %>
```

------------------------------------------------------------------------

### Golden Rule

Print → \<%= %\>\
Logic → \<% %\>

------------------------------------------------------------------------

### Loop Example

``` erb
<% @students.each do |student| %>
  <p><%= student.name %></p>
<% end %>
```

------------------------------------------------------------------------

### If / Else Example

``` erb
<% if student.age >= 18 %>
  <p>Adult</p>
<% else %>
  <p>Minor</p>
<% end %>
```

------------------------------------------------------------------------

### Common Mistake

Wrong:

``` erb
<% student.name %>
```

Correct:

``` erb
<%= student.name %>
```

------------------------------------------------------------------------

## 2. resources vs resource

Used inside config/routes.rb

------------------------------------------------------------------------

### resources (normal CRUD)

``` ruby
resources :students
```

Creates:

/students\
/students/1\
/students/new\
/students/1/edit

Used in most apps.

------------------------------------------------------------------------

### resource (single object)

``` ruby
resource :profile
```

Creates:

/profile\
/profile/edit

No ID in URL.

------------------------------------------------------------------------

### Easy Rule

ID in URL → resources\
No ID → resource

------------------------------------------------------------------------

## 3. Convention Over Configuration

You ran:

``` bash
rails g scaffold Student
```

Rails automatically created:

Model: student.rb

Table: students

Controller: students_controller.rb

Views: views/students/

------------------------------------------------------------------------

### Rails naming rules

Model → singular\
Table → plural\
Controller → plural\
Views → plural

------------------------------------------------------------------------


Rails connects everything automatically if naming rules are followed.
