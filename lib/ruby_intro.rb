# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each do |x|
    s+= x
  end

  return s
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr.sort!.reverse!
    return arr[0] + arr [1]
  end
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each do |x|
    if sum(x) == n
      return true
    end
  end
  
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /[bcdfghjklmnprstvwxyz]/i =~ s[0]
end

def binary_multiple_of_4? s
  if s=="0"
    return true
  elsif s.to_i(2) > 0
    return true if s.to_i(2) % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
def initialize(n, p)
  raise ArgumentError if n.empty? or p<=0
  @isbn,@price= n,p
end

def price_as_string
  "$%.2f" % @price
end

end
