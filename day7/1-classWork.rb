=begin
#single inheritance
class Parent
  def hello
    puts "Hello from Parent"
  end
  def car
    puts "This is a car"
  end
end

class Child < Parent
    def hello
    super
    puts "Hello from Child"
  end
end

c = Parent.new
d=Child.new
c.car   
d.hello

puts "---------------------------"

#Ancestors

puts Child.ancestors


So in Ruby:
✅ Supported: Single, Multilevel, Hierarchical
❌ Not directly supported: Multiple (use modules instead)


puts "---------------------------"


#respond_to?
puts d.respond_to?(:hello)

=end

# initialzer


=begin
class Parent
    def initialize(a,b)
        @num1=a
        @num2=b
    end

    def show
        puts "The value of a = #{@num1} \n The value of b = #{@num2}"
    end
end

class Child < Parent
    def initialize
        super(30,40)
    end
end

obj1=Parent.new(10,20)
obj1.show

obj2=Child.new
obj2.show

=end


class A
  def sum(num1,num2)
    puts"#{num1+num2}"
  end
end


class B<A
  def sum(num1,num2)
    super
    puts"#{num1*num2}"
  end
end

obj1=B.new
obj1.sum(10,2)
=end



