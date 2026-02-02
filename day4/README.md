# Day 4 -- Ruby Data Types, Variables & Basic Practice

------------------------------------------------------------------------

## 1. Introduction to Ruby Data Types

Ruby provides many built-in data types.

### Common ones:

-   String → text values (mutable)\
-   Integer → whole numbers\
-   Float → decimal numbers\
-   Symbol → lightweight immutable identifiers\
-   Boolean → true / false\
-   nil → represents no value

### Important:

In Ruby, all data types are objects.

------------------------------------------------------------------------

## 2. Common Ruby Data Structures

-   Array → collection of values\
-   Hash → key-value pairs\
-   Range → sequence of numbers

### Examples:

``` ruby
Array  -> [1, 2, 3]
Hash   -> { name: "karthik", age: 21 }
Range  -> 1..5
```

------------------------------------------------------------------------

## 3. Variables in Ruby (Scope Types)

### Types:

-   Local variable → name\
-   Global variable → \$name\
-   Instance variable → @name\
-   Class variable → @@name\
-   Constant → NAME

### Meaning:

-   Local → inside method/block\
-   Global → accessible everywhere\
-   Instance → belongs to object\
-   Class → shared across class\
-   Constant → fixed value

------------------------------------------------------------------------

## 4. Basic Ruby Loop

### Example:

``` ruby
for i in 1..10
  puts "Iteration number: #{i}"
end
```

### Notes:

``` ruby
1..10
```

prints 1 to 10

``` ruby
1...10
```

prints 1 to 9

------------------------------------------------------------------------

## Summary

-   Ruby data types are objects\
-   Arrays, Hashes, and Ranges store collections\
-   Ruby variables depend on scope\
-   Range loops repeat values

------------------------------------------------------------------------
