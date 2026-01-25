DAY 7 – RUBY OOP (INHERITANCE, OVERRIDING & SUPER)
--------------------------------------------------

1-Classes and Objects

A class is a blueprint used to create objects
An object is the real instance of a class
Methods define object behavior
Instance variables (@name, @email) store object data
-----------------------------------------------------

2-Inheritance

Inheritance allows a class to reuse another class’s features
Child class is created using < symbol

Example:
class Parent
  def greet
    puts "Hello from Parent"
  end
end

class Child < Parent
end

Child.new.greet

Child can use Parent method without redefining it.
------------------------------------------------------

3-Method Overriding

When child defines same method as parent
Ruby calls child version first

Example:

class Child < Parent
  def greet
    puts "Hello from Child"
  end
end


Calling greet prints:

Hello from Child
---------------------------------------------------------

4-super Keyword

super calls parent method
Used to extend behavior

Example:

class Child < Parent
  def greet
    super
    puts "Hello from Child"
  end
end


Output:

Hello from Parent
Hello from Child
-----------------------------------------------------------

5-Method Lookup (ancestors)

Ruby finds methods in this order:

Current class
Parent class
Modules
Object / Kernel

You can see it using:

-------------puts Child.ancestors


Example output:

Child
Parent
Object
Kernel
BasicObject


ruby searches from top to bottom.
-----------------------------------------------------------

6-respond_to?

Checks if object has a method:

obj.respond_to?(:greet)


Returns: true or false

Used to avoid errors and debug.
----------------------------------------------------------
Overall summary:

Inheritance shares behavior
Overriding changes behavior
super extends behavior
ancestors shows lookup path
respond_to? checks method existence
-----------------------------------------------------------
