# Action Mailbox Setup (Rails 6+)

This document walks through setting up and testing Action Mailbox in
Rails for receiving inbound emails.

------------------------------------------------------------------------

##  Core Setup Steps

### 1. Install Action Mailbox

``` bash
rails action_mailbox:install
```

This generates:

-   migrations\
-   ApplicationMailbox\
-   configuration files

------------------------------------------------------------------------

### 2. Run migrations

``` bash
rails db:migrate
```

Creates tables for storing inbound emails.

------------------------------------------------------------------------

### 3. Configure development email preview

**config/environments/development.rb**

``` ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.delivery_method = :letter_opener
```

(Optional --- for viewing outgoing mail locally)

------------------------------------------------------------------------

### 4. Configure ingress

**config/environments/production.rb** (or dev for testing)

``` ruby
config.action_mailbox.ingress = :any_ingress_server
```

Allows Rails to receive inbound emails.

------------------------------------------------------------------------

### 5. Route emails

**app/mailboxes/application_mailbox.rb**

``` ruby
class ApplicationMailbox < ActionMailbox::Base
  routing all: :support
end
```

------------------------------------------------------------------------

### 6. Generate mailbox

``` bash
rails g mailbox support
```

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

------------------------------------------------------------------------

##  Testing

Open:

http://localhost:3000/rails/conductor/action_mailbox/inbound_emails

------------------------------------------------------------------------

##  Database

Stored in:

action_mailbox_inbound_emails

------------------------------------------------------------------------

##  Summary

✔ Installed\
✔ Routed\
✔ Processed\
✔ Stored


