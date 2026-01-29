# Day 14 -- Rails ActiveStorage (File Uploads)

ActiveStorage is Rails' built-in system for uploading and managing files
like images, PDFs, and other attachments.

------------------------------------------------------------------------

## Step 1: Install ActiveStorage

``` bash
rails active_storage:install
```

This generates migration files for:

-   active_storage_blobs\
-   active_storage_attachments

------------------------------------------------------------------------

## Step 2: Run Database Migration

``` bash
rails db:migrate
```

This creates the ActiveStorage tables in the database.

------------------------------------------------------------------------

## Step 3: Attach File to Model

In `customer.rb`:

``` ruby
class Customer < ApplicationRecord
  has_one_attached :profile_photo
end
```

This allows each customer record to store one uploaded file.

------------------------------------------------------------------------

## Step 4: Permit Attachment in Controller

In `customers_controller.rb`:

``` ruby
def customer_params
  params.require(:customer).permit(:name, :email, :profile_photo)
end
```

------------------------------------------------------------------------

## Step 5: Add File Upload Field in Form

In `_form.html.erb`:

``` erb
<div>
  <%= form.label :profile_photo %>
  <%= form.file_field :profile_photo %>
</div>
```

------------------------------------------------------------------------

## Step 6: Display Image in Show Page

``` erb
<% if @customer.profile_photo.attached? %>
  <%= image_tag @customer.profile_photo %>
<% end %>
```
------------------------------------------------------------------------

## Step 6: Display Image in index Page

``` erb
<% if customer.profile_photo.attached? %>
    <%= image_tag customer.profile_photo,
          alt: "Profile Picture",
          width: "100px",
          height: "100px" %>
<% else %>
          <h3>No pic </h3>
  <% end %>
```

------------------------------------------------------------------------


# Active Storage (Multiple File Uploads in Rails)

Rails Active Storage allows attaching multiple files to a single model
record (for example: product gallery images).

------------------------------------------------------------------------

## Step 1: Attach multiple files in the model

### product.rb

``` ruby
class Product < ApplicationRecord
  has_many_attached :product_photo
end
```

**Meaning:**\
One product can have many photos stored using Active Storage.

------------------------------------------------------------------------

## Step 2: Permit multiple photos in controller

### products_controller.rb

``` ruby
def product_params
  params.require(:product).permit(
    :name,
    :description,
    :price,
    :stock,
    :is_active,
    :feedback,
    product_photo: []
  )
end
```

**Why `[]`?**\
It tells Rails to accept multiple uploaded files.

------------------------------------------------------------------------

## Step 3: Upload photos in the form

### \_form.html.erb

``` erb
<div>
  <%= form.label :product_photo, style: "display: block" %>
  <%= form.file_field :product_photo, multiple: true %>
</div>
```

**multiple: true** allows selecting many images at once.

------------------------------------------------------------------------

## Step 4: Show photos in show page

### show.html.erb

``` erb
<p>
  <strong>Product Photos:</strong><br>

  <% if @product.product_photo.attached? %>
    <% @product.product_photo.each do |photo| %>
      <%= image_tag photo, width: "100px", height: "100px" %>
    <% end %>
  <% else %>
    No photos uploaded
  <% end %>
</p>
```

------------------------------------------------------------------------

## Step 5: Show thumbnails in index page

``` erb
<% if product.product_photo.attached? %>
  <% product.product_photo.each do |photo| %>
    <%= image_tag photo, width: "25px", height: "25px" %>
  <% end %>
<% else %>
  No photo
<% end %>
```

------------------------------------------------------------------------

