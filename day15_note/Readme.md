#  Rails Action Mailer with Letter Opener – Step‑by‑Step Notes

These are the steps you followed to send emails in Rails using **Action Mailer** and preview them in the browser using **Letter Opener**.

---

##  Step 1: Generate Mailer

Create a mailer for customers:

```bash
rails generate mailer CustomerMailer
```

 This creates:
- `customer_mailer.rb`
- mailer views folder

---

##  Step 2: Enable Action Mailer

In `application.rb` add:

```ruby
require "action_mailer/railtie"
```

 This loads Rails mailer functionality into your app.

---

##  Step 3: Configure Development Environment

In `config/environments/development.rb`:

```ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.delivery_method = :letter_opener
```

 Meaning:
- `perform_deliveries = true` → allow sending emails
- `letter_opener` → open emails in browser instead of real sending

---

##  Step 4: Customer Mailer Logic

In `app/mailers/customer_mailer.rb`:

```ruby
class CustomerMailer < ApplicationMailer
  def welcome_email
    @customer = params[:customer]
    mail(to: @customer.email, subject: "Welcome to my app...")
  end
end
```

 What happens here:
- Receives customer data
- Sends email to customer's email
- Sets subject line

---

##  Step 5: Mailer View (Email Template)

Create view file:

`app/views/customer_mailer/welcome_email.html.erb`

```html
<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h1>Welcome to New Connection App, <%= @customer.name %>!</h1>
    <p>
      You have successfully joined this community
      your email is: <%= @customer.email %>.<br>
    </p>

    <p>Thanks for joining and have a fun-tastic day!</p>
  </body>
</html>
```

 This is the actual email design users will receive.

---

##  Step 6: Trigger Email from Controller

In `customers_controller.rb`:

```ruby
CustomerMailer.with(customer: @customer).welcome_email.deliver
```

 When customer is created → welcome email is sent automatically.

---

##  Step 7: Add Gems

In `Gemfile`:

```ruby
gem "letter_opener", group: :development
gem "letter_opener_web", group: :development
```

Then run:

```bash
bundle install
```

 These gems show emails in browser during development.

---

##  Step 8: Add Route for Email Preview

In `config/routes.rb`:

```ruby
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
```

 Now visit in browser:

```
http://localhost:3000/letter_opener
```

You can see all sent emails there 

---

