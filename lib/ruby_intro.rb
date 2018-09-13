# When done, submit this entire file to the autograder.

# Part 1

#question 1 
def sum arr
 
  size = arr.size #get the size of the array
  sum = 0
  if size==0
    return 0 
  end
  while size > 0 do #loop untild the size is zero
    size = size - 1 
    sum = arr[size] + sum 
  end
  return sum 
end

#question 2 
def max_2_sum arr
  
  size= arr.size 
  if size == 0 
    return 0 
  elsif size ==1
    return arr[0]
  end
  
  if arr[0].to_i>arr[1].to_i    
    first = arr[0].to_i
    second = arr[1].to_i
  else
    first = arr[1].to_i
    second = arr[0].to_i
  end
  
  for i in 2..size-1
      if arr[i].to_i >first  # condition when the new element is greater than all the element
        second = first
        first = arr[i].to_i
      elsif arr[i].to_i >second #case when the new element is second largest until now
        second = arr[i].to_i
      end  
  end    
  result = first + second
  return result
end

#question 3
def sum_to_n? arr, n
  
 size= arr.size 
 s= Hash.new(0)   #created a hash table
 for i in 0..size-1
  temp = n - arr[i];
  if (temp >=0 && s[temp]==1)
    return true 
  end
  s[arr[i].to_i] = 1   # update hash value to 1
 end
 return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  string_after_concatenation = "Hello, " + name #appending the hello
  return string_after_concatenation
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s=s.downcase
  first_letter = s[0]
  
  value = !!(first_letter =~ /[qwrtypsdfghjklzxcvbnm]/) #detect for the consonant
  return value
end

def binary_multiple_of_4? s
  
  check = !!(s=~ /[2-9A-Za-z]/)
  if check
    return false
  else
    last_two=s[-2..-1]
    if(s== "0")      #handling the case of zero
      return true
    elsif (last_two=="00")    #case for the binary number to be zero
      return true
    else 
      return false
    end
  end
  
end

# Part 3

class BookInStock

  
  
  def initialize(i,p)
    if(i== "")
      raise ArgumentError, 'isbn cant be nil'    #raising the error for null value in isbn
    elsif(p<=0)
      raise ArgumentError, 'price can not be less than zero'  #raising the error when price is negative or zero
    end
    
    @isbn = i 
    @price= p
  end
  attr_accessor :isbn    #getter setter
  attr_accessor :price   #getter setter
  def price_as_string()
    finalprice= format("$%.2f",@price)    #formatting of the price
    return finalprice
  end

end
