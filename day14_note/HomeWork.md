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

-------------------------------------------------------------------------

# Task-3 Form Helpers 


##  1. `form.text_field`

``` erb
<%= form.text_field :name %>
```

Generates:

``` html
<input type="text" name="customer[name]" id="customer_name">
```

Used for: - Names - Titles - Normal text

------------------------------------------------------------------------

##  2. `form.email_field`

``` erb
<%= form.email_field :email %>
```

Generates:

``` html
<input type="email" name="customer[email]">
```

Used for: - Emails (browser auto validation)

------------------------------------------------------------------------

##  3. `form.password_field`

``` erb
<%= form.password_field :password %>
```

Generates:

``` html
<input type="password" name="customer[password]">
```

Text is hidden while typing.

------------------------------------------------------------------------

##  4. `form.text_area`

``` erb
<%= form.text_area :description %>
```

Generates:

``` html
<textarea name="product[description]"></textarea>
```

Used for: - Feedback - Comments - Descriptions

------------------------------------------------------------------------

##  5. `form.number_field`

``` erb
<%= form.number_field :price %>
```

Only allows numbers.

Great for: - Price - Age - Stock - Quantity

------------------------------------------------------------------------

##  6. `form.file_field`

``` erb
<%= form.file_field :profile_photo %>
```

Creates file upload input.

Used with: - Active Storage

------------------------------------------------------------------------

##  7. `form.check_box`

``` erb
<%= form.check_box :is_active %>
```

Creates checkbox (true/false)

Great for: - Active - Published - Verified flags

------------------------------------------------------------------------

##  8. `form.select`

``` erb
<%= form.select :role, ["Admin", "User", "Guest"] %>
```

Creates dropdown menu.

------------------------------------------------------------------------

## 9. `form.submit`

``` erb
<%= form.submit "Save" %>
```

Creates submit button.

------------------------------------------------------------------------



