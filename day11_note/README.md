| Layer             | Component            | Purpose                                                      |
| ----------------- | -------------------- | ------------------------------------------------------------ |
| Model             | **ActiveModel**      | Handles validations & model behavior (even without DB table) |
| Model             | **ActiveRecord**     | ORM – connects Ruby objects to database tables               |
| Controller        | **ActionController** | Handles requests, params, responses, CRUD logic              |
| View              | **ActionView**       | Renders HTML, ERB templates, helpers                         |
| View              | **ActionText**       | Rich text content handling                                   |
| Routes            | **ActionDispatch**   | Routes browser requests to controllers                       |
| Controller + View | **ActionPack**       | Syncs controllers and views                                  |
| Mail              | **ActionMailer**     | Outgoing emails                                              |
| Mail              | **ActionMailbox**    | Incoming emails                                              |
| System            | **ActiveSupport**    | Helper methods (present?, validations, time helpers)         |
| Background        | **ActiveJob**        | Background job processing                                    |
| Network           | **ActionCable**      | WebSockets (real-time features)                              |
| Storage           | **ActiveStorage**    | File uploads & attachments                                   |
