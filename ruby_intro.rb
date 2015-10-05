# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_num = 0
  arr_size=arr.size
  if arr.size==0 #判断数组元素是否只有一个
    return 0
  end
  
  arr.each do |i|
    sum_num += i
  end
  return sum_num
end

def max_2_sum arr
  # YOUR CODE HERE
  sum_num_2 = 0
  arr_size=arr.size
  if arr_size==0 #判断数组元素是否为空
    return 0
  end
  if arr_size==1 #判断数组元素是否为1个
    return arr[0]
  end
  
  arr_sort=arr.sort #先排序，再截取最大的两个数
  for i in 1..2
    sum_num_2 += arr_sort[arr_size-i]
  end
  return sum_num_2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum_num_n = 0
  arr_size=arr.size
  if arr_size==0 #判断数组元素是否为空
    return 0
  end
  if arr_size<=n #判断数组元素是否不多于n个
    arr.each do |i|
      sum_num_n += i
    end
    return sum_num_n
  end
  
  arr_sort=arr.sort #先排序，再截取最大的n个数
  for i in 1..n
    sum_num_n += arr_sort[arr_size-i]
  end
  return sum_num_n
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  puts "hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  reg_1=/[a-z]/ 
  reg_2=/[^aeiou]/
  if(reg_1===s[0].downcase && reg_2===s[0].downcase) #判断首位是否为不为元音的英语字母
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  reg=/[^01]/
  if(reg===s) #判断其是否为二进制数
    return false
  elsif(s.to_i.to_s(10).to_i%4==0) #判断此二进制数是否能被4整除
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price) #构造函数
    @isbn=isbn
    @price=price
    if(@isbn===""||@price<=0) #异常处理
      raise ArgumentError
    end
  end

 #set,get方法
  def set_isbn(isbn)
    @isbn=isbn
    if(@isbn==="")
      raise ArgumentError
    end
  end

  def set_price(price)
    @price=price
    if(@price<=0)
      raise ArgumentError
    end
  end

  def get_isbn
    puts @isbn
  end

  def get_price
    puts @price
  end

  def price_as_string #price处理
    puts "$"+format("%.2f", @price)
  end
end
  begin
    # a = BookInStock.new(123,2)
    # #a.set_price(15.2)
    # a.get_price
    # a.price_as_string  
    rescue ArgumentError=>e
      puts "发生错误，错误为ISBN为空，或者价格<=0"
  end

