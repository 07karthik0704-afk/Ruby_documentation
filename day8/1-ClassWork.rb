#Conditional statment

# stock =20
# is_available=false

# if stock>20
#     is_available=true

# else
#     puts "It's not available"
# end

# puts is_available

# #ternary operator

# is_active=false

# puts is_active ? "Active" : "Not Active"

#else if
=begin
price=350
discount=0

if price>100 && price <200
    discount=10
elsif price>200 && price<300
    discount=20
elsif price>300 && price<400
    discount=30
elsif price>400 && price<500
    discount=40
else
    discount=5
end

puts discount
=end

#-----unless

# stock=15
# unless stock <0
#     puts "Stock avaliable"
# else
#     puts "stock not avaliaable"
# end

# email=nil

# puts email.nil?

#public private protected

class Animal
    def eat
        puts "Dog is eating..."
    end
    protected
    def play
        puts"Dog is Playing"
    end
end
class Dog <Animal
    def eat
        puts "Dog is eating.."
        sleep
        play
    end
    private
    def sleep
        puts "Dog is sleeping"
    end
end

obj=Dog.new
obj.eat



