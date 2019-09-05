# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum += a }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size() == 0 then return 0 end

  max_1 = -10000
  max_2 = -10000
  arr.each { |a| if a > max_1 then max_1 = a elsif a > max_2 then max_2 = a end }

  if arr.size() == 1 then return max_1
  else return max_1 + max_2 end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size() == 0 then return false end

  for i in 0..arr.size() - 1
  	tmp = arr.clone()
  	tmp.delete_at(i)
  	tmp.each { |a| if arr[i] + a == n then return true end }
  end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.upcase

  if s.size() == 0 then return false
  elsif !(s.chr =~ /[A-Za-z]/) then return false
  elsif s.chr == "A" or s.chr == "E" or s.chr == "I" or s.chr == "O" or s.chr == "U" then return false
  else return true end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  for i in 0..s.size() - 1
  	if !(s[i] =~ /[0-1]/) then return false end
  end

  if s[-1] == "0" and s[-2] == "0" then return true
  elsif s[-1] == "0" and s.size() == 1 then return true
  else return false end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
		raise ArgumentError.new("ISBN cannot be empty") unless isbn.size > 0
		raise ArgumentError.new("Price must be greater than zero") unless price > 0
		@isbn = isbn
		@price = price
	end

	def isbn= isbn
		@isbn = isbn
	end

	def isbn
		@isbn
	end

	def price= price
		@price = price
	end

	def price
		@price
	end

	def price_as_string
		temp = "$" + self.price.to_s
		
		if !temp.include? "."
			return temp + ".00"
		elsif temp[-1] =~ /[0-9]/ and temp[-2] =~ /[0-9]/
			return temp
		elsif temp[-1] =~ /[0-9]/
			return temp + "0"
		else return temp end
	end
end
