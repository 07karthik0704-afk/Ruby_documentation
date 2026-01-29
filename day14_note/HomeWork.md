# Task1
# Invoice Upload using Active Storage (Product)


## Step 1 --- Attach Invoice to Product model

``` ruby
class Product < ApplicationRecord
  has_one_attached :invoice
end
```

------------------------------------------------------------------------

## Step 2 --- Permit invoice in controller

``` ruby
(
  :name, :description, :price, :stock, :is_active, :feedback, :invoice
)
```

------------------------------------------------------------------------

## Step 3 --- Upload PDF in form

``` erb
<div>
  <%= form.label :invoice %>
  <%= form.file_field :invoice, accept: "application/pdf" %>
</div>
```

------------------------------------------------------------------------

## Step 4 --- Show PDF in show page

``` erb
<% if @product.invoice.attached? %>
  <%= link_to "View Invoice", url_for(@product.invoice), target: "_blank" %>
<% else %>
  No invoice uploaded
<% end %>
```

------------------------------------------------------------------------

## Step 5 --- Show PDF in index page

``` erb
<<h3>
  <strong>Invoice:</strong><br>

  <% if product.invoice.attached? %>
    <%= link_to "View Invoice", url_for(product.invoice), target: "_blank" %>
  <% else %>
    No invoice uploaded
  <% end %>
</h3>
```

------------------------------------------------------------------------

## Optional --- Validate PDF only

``` ruby
validate :invoice_type

def invoice_type
  if invoice.attached? && !invoice.content_type.in?(["application/pdf"])
    errors.add(:invoice, "must be a PDF file")
  end
end
```

------------------------------------------------------------------------


# Task 2 — Add DOB Column to Customers Table (Rails Migration)



## ✅ Step 1 — Generate Migration

Run in terminal:

```bash
rails g migration AddDobToCustomers dob:date
````

This creates a migration file inside:

```
db/migrate/
```

---

## ✅ Step 2 — Migration File (Auto Generated)

Rails will generate something like:

```ruby
class AddDobToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :dob, :date
  end
end
```

### What it does:

Adds a new column `dob` of type `date` to `customers` table.

---

## ✅ Step 3 — Run Migration

```bash
rails db:migrate
```

Now the column is added to database.

---

## ✅ Step 4 — Permit DOB in Controller

In `customers_controller.rb`:

```ruby
def customer_params
  params.require(:customer).permit(:name, :email, :dob, :profile_photo)
end
```

---

## ✅ Step 5 — Add DOB Field in Form

In `_form.html.erb`:

```erb
<div>
  <%= form.label :dob %>
  <%= form.date_field :dob %>
</div>
```

---

## ✅ Step 6 — Display DOB in Show Page

In `show.html.erb`:

```erb
<p>
  <strong>Date of Birth:</strong>
  <%= @customer.dob %>
</p>
```

---

