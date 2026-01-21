arr=[11,22,33,44,55]

#for loop
for i in 0..4
    puts arr[i]
   # i=i+1 not required
end
puts "-------------------------------------------------"
#for loop

#for loop in arr
for  i in arr
    puts i
end
puts "-------------------------------------------------"
#while loop
i=1
while i<10
    puts i
    i=i+1
end

puts "-------------------------------------------------"

#do while
i=1
loop do
    puts "do loop"
    i=i+1;
    break if i>10
end

puts "-------------------------------------------------"

#untill loop ---- oppostie to while 

k=1
until k>10
    puts "untill loop"
    k=k+1
end

#redo and next
puts "-------------------------------------------------"
for i in 1..10
  next if i == 5
  puts i
end

puts "-------------------------------------------------"

flag = false

for k in 11..20
  puts k

  if k == 12 && flag == false
    flag = true
    redo
  end
end

puts "-------------------------------------------------"
# times  loop
10.times do
    puts "times loop"
end

puts "-------------------------------------------------"


=begin
each
select
reject,each,map,all,inject
=end

#select 

arr2=[123,123,2,12,56,59,126]

print arr2.select{|n| n>50}

#selct2

puts""
puts "-------------------------------------------------"
arr3=arr2.select{|n| n>50} #select
print arr3

puts ""
puts "-------------------------------------------------"

# each iteration
arr .each do |i|
    print "#{i} "
end

puts "\n-------------------------------------------------"

#all

puts arr.all?{|n| n>22}

puts "-------------------------------------------------"
#any

puts arr.any?{|n| n>22}

puts "\n-------------------------------------------------"

#map , collect , each
print arr
print arr.map{|n| n*2}

puts "\n-------------------------------------------------"

print arr
print arr.collect{|n| n*2}

puts "\n-------------------------------------------------"

print arr
print arr.each{|n| n*2}

puts "\n-------------------------------------------------"