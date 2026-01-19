# puts "Single line comments below"

# --- Ruby Single-Line Comments Example ---
# puts "Hello from single line comment demo"

# puts "Multi line comments below"

=begin
This is a multi-line comment.
Line 2 of the comment
Line 3 of the comment
=end


# class Example
#   def initialize(num, decimal, bool, text, sym, list, data, span, empty_val)
#     @num = num
#     @decimal = decimal
#     @bool = bool
#     @text = text
#     @sym = sym
#     @list = list
#     @data = data
#     @span = span
#     @empty_val = empty_val
#   end
#
#   def show_data_types
#     puts "Integer: #{@num} (#{@num.class})"
#     puts "Decimal: #{@decimal} (#{@decimal.class})"
#     puts "Boolean: #{@bool} (#{@bool.class})"
#     puts "Text: #{@text} (#{@text.class})"
#     puts "Symbol: #{@sym} (#{@sym.class})"
#     puts "Array: #{@list} (#{@list.class})"
#     puts "Hash: #{@data} (#{@data.class})"
#     puts "Range: #{@span} (#{@span.class})"
#     puts "Nil: #{@empty_val} (#{@empty_val.class})"
#   end
# end
#
# obj = Example.new(42, 3.14, true, "Hello, Ruby!", :ruby_symbol, [1,2,3], { key: "value" }, (1..10), nil)
# obj.show_data_types


# --- Addition of Two Numbers ---
# print "Type your name: "
# user_name = gets.chomp.upcase
#
# print "Enter first number: "
# x = gets.chomp.to_i
#
# print "Enter second number: "
# y = gets.chomp.to_i
#
# total = x + y
# puts "Sum of #{x} and #{y} is #{total}"
# puts "Hi #{user_name}!"


print "Enter your name: "
user_name = gets.chomp
puts "Hello #{user_name}, welcome!"
