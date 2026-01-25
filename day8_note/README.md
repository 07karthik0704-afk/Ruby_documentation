Day 8 – Conditional Statements & Access Modifiers
-------------------------------------------------

1-if / else (basic condition)

stock = 5
if stock > 0
  puts "Item available in stock"
else
  puts "Item not available"
end

Output:
Item available in stock
---------------------------------------------------

2-Ternary Operator

is_active = false
result = is_active ? "Product Active" : "Product Inactive"
puts result

Output:
Product Inactive
------------------------------------------------------

3-if – elsif – else (multiple conditions)

price = 450
discount = 0
if price >= 100 && price < 200
  discount = 10
elsif price >= 200 && price < 500
  discount = 20
elsif price >= 500 && price < 1000
  discount = 35
else
  discount = 0
end
puts "Discount: #{discount}%"

Output:
Discount: 20%
-------------------------------------------------------

4-case / when using range

price = 450
case price
when 100..200
  discount = 10
when 201..500
  discount = 20
when 501..1000
  discount = 35
else
  discount = 0
end
puts "Discount: #{discount}%"
---------------------------------------------------------

5-case without variable (condition style)
price = 450

case
when price >= 100 && price < 200
  discount = 10
when price >= 200 && price < 500
  discount = 20
when price >= 500 && price < 1000
  discount = 35
else
  discount = 0
end

puts "Discount: #{discount}%"
---------------------------------------------------------

6-unless statement

stock = 0
unless stock > 0
  puts "No stock available"
else
  puts "Stock available"
end
---------------------------------------------------------

7-nil? check

email = nil
if email.nil?
  puts "Email is missing"
else
  puts "Email is present"
end
----------------------------------------------------------

8-public, protected, private (FULL example)

class Animal
  def eat
    puts "Animal is eating"
  end

  protected def run
    puts "Animal is running"
  end
end

class Dog < Animal
  def eat
    puts "Dog is eating"
    sleep
    run
  end

  private
  def sleep
    puts "Dog is sleeping"
  end
end

dog = Dog.new
dog.eat

Output:

Dog is eating
Dog is sleeping
Animal is running

❌ These will fail:
dog.sleep
dog.run


Because:

sleep is private
run is protected
-----------------------------------------------------------------

| Keyword   | Who can call    |
| --------- | --------------- |
| public    | anyone          |
| protected | class + child   |
| private   | same class only |

-------------------------------------------------------------------