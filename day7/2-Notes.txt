Day 7 – Ruby OOP (Inheritance & Method Overriding)

Classes and Objects
•	A class acts like a template/blueprint used to create objects.
•	An object is the real instance created from a class.
•	Methods describe what an object can do (its actions/behavior).
•	Instance variables (like @name) store data that belongs to that specific object.

Inheritance
•	Inheritance helps one class take features from another class.
•	A child (subclass) is created from a parent (superclass) using the < symbol.
•	This reduces repeated code because common logic stays in the parent class.
•	The child class can use parent methods and also access parent instance variables.

Method Overriding
•	If the child class defines a method with the same name as the parent, it overrides it.
•	When Ruby finds two methods with the same name, it prefers the child version first.
•	Overriding is useful when you want to modify or improve an inherited behavior.

super Keyword
•	super is used inside the child method to call the parent method.
•	It can be written as super (passes arguments automatically) or super() (passes none).
•	Using super helps you add extra behavior without removing the parent logic.

Method Lookup (How Ruby Finds Methods)
•	When you call a method, Ruby checks for it in this sequence:
•	1) Current class
•	2) Parent class
•	3) Included modules
•	4) Object / Kernel
•	You can use .ancestors to view the full lookup chain.

Helpful Reflection Methods
•	respond_to? checks whether an object has a particular method.
•	It is helpful for debugging and for calling methods safely.

Overriding – Key Idea (Concept)
•	Parent and child can have a method with the same name.
•	Child method replaces the parent method output/behavior.
•	If you still want the parent logic, you can combine it using super.
