# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |a,i| a += i }
end

def max_2_sum arr
  if arr.empty?
    0
    elsif arr.count == 1
    arr[0]
  else
    arr2 = arr.sort
    arr2[-1] + arr2[-2]
  end
end

def sum_to_n? arr, n
  for i in (0..arr.count-1) do
    for j in (i+1..arr.count-1) do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-zA-Z&&[^aeiouAEIOU]]/
end

def binary_multiple_of_4? s
  s == "0" || s =~ /^[01]+00$/
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn_arg, price_arg)
    if price_arg <= 0
      throw ArgumentError
    end
    if isbn_arg.empty?
      throw ArgumentError
    end
    @isbn = isbn_arg
    @price = price_arg
  end
  def price_as_string
    sprintf "$%1.2f", @price
  end
end
