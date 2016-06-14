# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+) # reduce is same as inject
end

def max_2_sum arr
  len = arr.count
  case len
    when 0
      0
    when 1
      arr[0]
  else
    arr.sort!
    arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  for i in 0...arr.count do
    for j in i+1...arr.count do
      return true if arr[i] + arr[j] == n
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
  s == "0" || s =~ /^[01]*00$/
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn_arg, price_arg)
    throw ArgumentError if isbn_arg.empty? || price_arg <= 0
    @isbn = isbn_arg
    @price = price_arg
  end
  def price_as_string
    sprintf "$%1.2f", @price
  end
end
