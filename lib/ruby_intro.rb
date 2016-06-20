# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+) # reduce is same as inject
end

def max_2_sum arr
  sum arr.max 2
end

def sum_to_n? arr, n
  arr.combination(2) { |x, y| return true if x+y == n }
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
  s =~ /^(0|[01]*00)$/
end

# Part 3

class BookInStock
  # It was pointed out in Pair Programming that the error should be raised if 
  # anyone EVER wanted to input the wrong ISBN or price, not just at init time.
  attr_reader :isbn, :price

  def isbn= isbn_arg
    throw ArgumentError, "Invalid ISBN #{isbn_arg}" if isbn_arg.empty?
    @isbn = isbn_arg
  end
  def price= price_arg
    throw ArgumentError, "Invalid Price #{price_arg}" if price_arg <= 0
    @price = price_arg
  end
  
  def initialize(isbn_arg, price_arg)
    self.isbn= isbn_arg # use the defined writers here (ugly I know)
    self.price= price_arg
  end
  
  def price_as_string
    "$%1.2f" % @price # String#% works like sprintf
  end
end
