# Action Text in Rails 

##  STEP 1 --- Install Action Text

``` bash
rails action_text:install
```

### What this does:

Rails sets up the whole rich-text system:

-   Adds Action Text code\
-   Sets up file uploads (Active Storage)\
-   Creates migration files

Think of it like:

 "Rails, please add rich text feature to my app."

Without this → nothing will work 

------------------------------------------------------------------------

##  STEP 2 --- Run Migration

``` bash
rails db:migrate
```

###  What this does:

Rails creates new database tables:

-   `action_text_rich_texts` → stores formatted text\
-   `active_storage` tables → stores images & files

Now the database is ready to store rich content.

No migrate = no storage place 

------------------------------------------------------------------------

##  STEP 3 --- Use Rich Editor in Form

``` erb
<%= form.rich_text_area :about_me %>
```

###  What this does:

Shows a rich text editor in browser:

-   Bold, italic, lists\
-   Image upload\
-   Formatted content

This is only the UI part.

------------------------------------------------------------------------

##  STEP 4 --- Show Rich Text in Show Page

``` erb
<%= @product.about_me.to_s %>
```

###  What this does:

Fetches formatted content from Action Text tables\
and displays it properly.

------------------------------------------------------------------------

##  STEP 5 --- Connect Model to Action Text

In `product.rb`:

``` ruby
has_rich_text :about_me
```

###  What this does:

Tells Rails:

 "Product has a rich text field called about_me"

Rails now knows where to save and retrieve it.

Without this → form can't store data 

------------------------------------------------------------------------

##  STEP 6 --- Permit Param in Controller

In `products_controller.rb`:

``` ruby
def product_params
  params.require(:product).permit(
    :name,
    :description,
    :price,
    :stock,
    :is_active,
    :about_me
  )
end
```

###  What this does:

Rails security check.

It allows `about_me` to be saved.

Without this → Rails blocks it silently 

example : 
Security guard at office 
Only names on the list can enter.

------------------------------------------------------------------------

##  Final Flow

Install → Migrate → Form → Model → Params → Show

------------------------------------------------------------------------

