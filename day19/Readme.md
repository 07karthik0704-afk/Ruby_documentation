# Rails User  Vendor Association (Clean & Idiomatic)

Today they teached about the association

------------------------------------------------------------------------

## Step 1 -- Create User model

rails g model User name:string email:string

------------------------------------------------------------------------

## Step 2 -- Migrate

rails db:migrate

------------------------------------------------------------------------

## Step 3 -- Create Vendor model

rails g model Vendor name:string location:string user:references

Rails automatically adds:

t.references :user, foreign_key: true

------------------------------------------------------------------------

## Step 4 -- Migrate again

rails db:migrate

------------------------------------------------------------------------

## Step 5 -- Add associations

### vendor.rb

class Vendor \ belongs_to :user 

### user.rb

class User \ has_one :vendor end

------------------------------------------------------------------------

## Step 6 -- comment the associations

The above is called as the rails level associations
after commenting it is called as the sql associations
--------------------------------------------------------------------------
## Step 7 -- Create records

User.create(name: "John", email: "john@test.com")

Vendor.create(name: "Shop A", location: "NY", user_id: 3)

------------------------------------------------------------------------

## Step 8 -- Test

Vendor.last
Vendor.last.user
User.last.create_vendor()
User.find(6).create_vendor()

------------------------------------------------------------------------

