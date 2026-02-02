# Action Mailbox Setup (Rails 6+)

This guide explains how to configure Action Mailbox in Rails to receive,
store, route, and process inbound emails --- including why each step is
required.

------------------------------------------------------------------------

##  Core Setup Steps

### 1. Install Action Mailbox

``` bash
rails action_mailbox:install
```

What this does:

-   Adds database migrations to store incoming emails\
-   Creates ApplicationMailbox (email router)\
-   Adds configuration files

Without this step, Rails cannot receive inbound emails.

------------------------------------------------------------------------

### 2. Run migrations

``` bash
rails db:migrate
```

What this does:

-   Creates tables like action_mailbox_inbound_emails\
-   Stores raw emails and attachments

This is where every incoming email is saved.

------------------------------------------------------------------------

### 3. Configure development email preview

config/environments/development.rb

``` ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.delivery_method = :letter_opener
```

What this does:

-   Sends emails locally\
-   Opens them in browser

Used only for development testing.

------------------------------------------------------------------------

### 4. Configure ingress

config/environments/production.rb (or dev)

``` ruby
config.action_mailbox.ingress = :any_ingress_server
```

What this does:

-   Enables receiving inbound emails\
-   Uses built-in server for testing

Production uses real providers.

------------------------------------------------------------------------

### 5. Route emails

app/mailboxes/application_mailbox.rb

``` ruby
class ApplicationMailbox < ActionMailbox::Base
  routing all: :support
end
```

What this does:

-   Routes all emails to SupportMailbox\
-   Works like Rails routes for emails

------------------------------------------------------------------------

### 6. Generate mailbox

``` bash
rails g mailbox support
```

What this does:

-   Creates SupportMailbox class\
-   Where email logic lives

------------------------------------------------------------------------

### 7. Process email

``` ruby
class SupportMailbox < ApplicationMailbox
  def process
    body = mail.decoded
    sender = mail.from.first
    subject = mail.subject
  end
end
```

What this does:

-   Extracts email content\
-   Lets you save into models

------------------------------------------------------------------------

##  Testing

Open:

http://localhost:3000/rails/conductor/action_mailbox/inbound_emails

Used to simulate incoming emails.

------------------------------------------------------------------------

##  Database

Stored in:

action_mailbox_inbound_emails

------------------------------------------------------------------------

##  Summary Flow

Email arrives\
Rails stores it\
Routes it\
Processes it\
App uses it
