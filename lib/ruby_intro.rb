# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |num| sum += num }
  return sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr.first
  end
  max = arr.first + arr.last
  while arr.length > 0
    num1 = arr.shift
    arr.each do |num2|
      if num1 + num2 > max
        max = num1 + num2
      end
    end
  end
  return max
end

def sum_to_n? arr, n
  if arr.empty? or arr.length == 1
    return false
  elsif max_2_sum(arr) >= n
    return true
  else 
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.match(/^[BCDFGHJKLMNPQRSTVWXYZ]/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.match(/(^[01]*100|^0)$/)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <=0
      raise ArgumentError.new() 
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
