# Active Support (Rails Notes)

Active Support extends Ruby core classes with helpful methods used across Rails.

------------------------------------------------------------------------

## 1. Core Extensions

###  Time & Date Helpers

``` ruby
now_time = Time.zone.now
now_time + 5.days
now_time + 2.weeks
now_time + 6.hours
3.hours.ago

today = Date.today
2.years.ago
```

#### Date Utilities

``` ruby
Date.new(2027,03,15)
Date.new(2027,03,15).change(day: 20)
Date.new(2027,03,15).beginning_of_month
Date.new(2027,03,15).end_of_month
```

------------------------------------------------------------------------

###  String Helpers

``` ruby
product = "smart tv feb 22"
product.parameterize

"  phone  ".squish
"mobile_phone".camelize
" this is rails ".titleize
"cars".singularize

text.blank?
text.present?
```

------------------------------------------------------------------------

###  Presence Checks

``` ruby
items = []
items.nil?
items.empty?
items.blank?
items.present?
```

------------------------------------------------------------------------

###  Nil Handling

``` ruby
nil.present?
nil.blank?
```

------------------------------------------------------------------------

## 2. Instrumentation APIs

Used internally by Rails for logging, monitoring, and performance
tracking.

------------------------------------------------------------------------

## 3. Concerns

Shared reusable code for:

-   Models\
-   Controllers\
-   Helpers

------------------------------------------------------------------------

## 4. Multibyte & Localization

Supports encoding, language formatting, and region-specific output.

------------------------------------------------------------------------

## Notes

-   `empty?` → collections only\
-   `blank?`, `present?`, `nil?` → universal

------------------------------------------------------------------------

## Extra Helpers

### try

``` ruby
count.try(:next)
count.try!(:next)
```

------------------------------------------------------------------------

### acts_like?

Checks object behavior compatibility.

------------------------------------------------------------------------

### in?

``` ruby
3.in?([2,3,4])
"ai".in?("rails")
40.in?(10..30)
```

------------------------------------------------------------------------

### Array Copying

#### Shallow

``` ruby
arr.dup
Array.new(arr)
arr.clone
```

#### Deep

``` ruby
arr.deep_dup
```

------------------------------------------------------------------------

### extract!

``` ruby
nums = [2,4,6,7,9,10]
evens = nums.extract! { |n| n.even? }
```

Removes even numbers and stores them in `evens`.
