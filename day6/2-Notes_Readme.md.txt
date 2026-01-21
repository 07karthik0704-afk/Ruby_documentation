Ruby Loops & Enumerable Methods – Explanation Notes

1) Array creation
arr = [11, 22, 33, 44, 55]
• Creates an array named arr containing 5 numbers.

2) for loop using index
for i in 0..4
  puts arr[i]
end
• 0..4 means index positions 0 to 4.
• arr[i] prints element at index i.
• Automatically increases i, so i = i + 1 not required.

3) Separator line
puts "-------------------------------------------------"
• Prints a line for separating output sections.

4) for loop through array values
for i in arr
  puts i
end
• i becomes each element of array directly.
• No index needed.

5) while loop
i = 1
while i < 10
  puts i
  i = i + 1
end
• Runs while condition is true.
• Prints 1 to 9.
• i = i + 1 is required to avoid infinite loop.

6) loop do (do-while style)
i = 1
loop do
  puts "do loop"
  i = i + 1
  break if i > 10
end
• loop do runs continuously (infinite loop) until break.
• break if i > 10 stops loop when i becomes 11.
• Runs at least once.

7) until loop (opposite of while)
k = 1
until k > 10
  puts "until loop"
  k = k + 1
end
• until runs while condition is false.
• Stops when k > 10 becomes true.

8) next keyword (skip iteration)
for i in 1..10
  next if i == 5
  puts i
end
• next skips current iteration.
• Here, 5 is skipped.

9) redo keyword (repeat same iteration)
flag = false
for k in 11..20
  puts k
  if k == 12 && flag == false
    flag = true
    redo
  end
end
• redo repeats the current iteration without moving to next value.
• Here, 12 prints twice.
• flag prevents infinite loop.

10) times loop
10.times do
  puts "times loop"
end
• Runs block exactly 10 times.
• Used when repeat count is fixed.

11) Multiline comment
=begin
each
select
reject
map
all
inject
=end
• Ruby multiline comment block.

12) select method (filter values)
arr2 = [123, 123, 2, 12, 56, 59, 126]
print arr2.select { |n| n > 50 }
• select returns new array with values matching condition.
• Output: [123, 123, 56, 59, 126]

13) Storing select result
arr3 = arr2.select { |n| n > 50 }
print arr3
• Stores filtered values inside arr3.

14) each iteration
arr.each do |i|
  print "#{i} "
end
• each loops through every element.
• Used mainly for printing / processing.

15) all? method
puts arr.all? { |n| n > 22 }
• Checks if all values satisfy condition.
• Here returns false because 11 and 22 are not > 22.

16) any? method
puts arr.any? { |n| n > 22 }
• Checks if at least one value satisfies condition.
• Here returns true because 33, 44, 55 satisfy condition.

17) map method
print arr.map { |n| n * 2 }
• map transforms each element and returns a new array.
• Output: [22, 44, 66, 88, 110]

18) collect method
print arr.collect { |n| n * 2 }
• collect is the same as map.
• Output: [22, 44, 66, 88, 110]

19) each with transformation
print arr.each { |n| n * 2 }
• each returns the original array, not transformed results.
• Output: [11, 22, 33, 44, 55]

Final Summary
• for loop → iterate using range or direct array
• while → run while condition true
• loop do → infinite loop until break
• until → opposite of while
• next → skip iteration
• redo → repeat same iteration
• times → fixed repeats
• select → filter
• each → iterate
• all? → all must match
• any? → at least one matches
• map/collect → transform new array
• each → returns original array

