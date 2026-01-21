#  # 1-overriding Object's to_s method

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "Person Name: #{@name}"
#   end
# end

# p1 = Person.new("Karthik")
# puts "karthik".to_s
# puts p1.to_s
# puts Person.ancestors
# puts "-----------------------------------"


# 2-overriding Kernel puts
# class MyPrinter
#   def puts(msg)
#     super("---- #{msg.upcase} ---")
#   end

#   def demo
#     puts "hello from kernel override"
#   end
# end

# obj = MyPrinter.new
# obj.demo
# puts MyPrinter.ancestors
# puts "-----------------------------------"

#3-overriding String upcase

# class MyString < String
#   def upcase
#     "OVERRIDDEN => " + super
#   end
# end

# s = MyString.new("hello ruby")
# puts s.upcase
# puts "-----------------------------------"


#4-Integer Override

# class MyNumber
#   def initialize(num)
#     @num = num
#   end

#   def *(other)
#     puts "Multiplying #{@num} * #{other}"
#     @num * other
#   end
# end

# n = MyNumber.new(6)
# puts n * 7




