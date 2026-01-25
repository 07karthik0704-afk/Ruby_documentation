Day 6 – Ruby Loops & Enumerable Methods
---------------------------------------

1-Array Creation
arr = [11, 22, 33, 44, 55]
Creates an array with 5 elements.
---------------------------------------

2-for Loop Using Index
for i in 0..4
  puts arr[i]
end

Loops from index 0 to 4
Prints each element using position
Auto increments i
----------------------------------------

3-for Loop Directly on Array
for i in arr
  puts i
end


i becomes each value
No index needed
Cleaner than index loop
------------------------------------------

4-while Loop
i = 1
while i < 10
  puts i
  i += 1
end

Runs while condition is true
Manual increment required
Stops when condition becomes false
----------------------------------------------

5-loop do (Do-While Style)
loop do
  puts "do loop"
  i += 1
  break if i > 10
end


Infinite loop by default
break stops execution
Runs at least once
-----------------------------------------------

6-until Loop (Opposite of while)
until k > 10
  puts k
  k += 1
end


Runs while condition is false
Stops when condition becomes true
-----------------------------------------------

7-next Keyword
next if i == 5


Skips current iteration
Continues loop from next value
-----------------------------------------------

8-redo Keyword
redo


Repeats same iteration
Does not move to next value
Needs condition (flag) to avoid infinite loop
-----------------------------------------------

9-times Loop
10.times do
  puts "times loop"
end


Runs block fixed number of times
Best for known repetition count
-----------------------------------------------

-----------------ENUMERABLE METHODS------------

1-select (Filtering)
arr2.select { |n| n > 50 }


Keeps values that match condition
Returns new array
-----------------------------------------------

2-Storing select result
arr3 = arr2.select { |n| n > 50 }

Saves filtered array for later use
-----------------------------------------------

3-each Method
arr.each do |i|
  print i
end


Iterates over every element
Mainly for processing/printing
Returns original array
-----------------------------------------------

4-all? Method
arr.all? { |n| n > 22 }


Checks if all elements satisfy condition
Returns true or false
-----------------------------------------------

5-any? Method
arr.any? { |n| n > 22 }


Checks if at least one matches
Returns true or false
-----------------------------------------------

6-map Method
arr.map { |n| n * 2 }


Transforms each element
Returns new array
-----------------------------------------------

7-collect Method
arr.collect { |n| n * 2 }

 Same as map
------------------------------------------------

8-each vs map difference
arr.each { |n| n * 2 }

each ignores transformation
Returns original array
------------------------------------------------
short notes:
Loops control repetition, enumerable methods cleanly filter and transform data in Ruby.

------------------------------------------------
