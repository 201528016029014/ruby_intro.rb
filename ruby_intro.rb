# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_num = 0
  arr_size=arr.size
  if arr.size==0 #�ж�����Ԫ���Ƿ�ֻ��һ��
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
  if arr_size==0 #�ж�����Ԫ���Ƿ�Ϊ��
    return 0
  end
  if arr_size==1 #�ж�����Ԫ���Ƿ�Ϊ1��
    return arr[0]
  end
  
  arr_sort=arr.sort #�������ٽ�ȡ����������
  for i in 1..2
    sum_num_2 += arr_sort[arr_size-i]
  end
  return sum_num_2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum_num_n = 0
  arr_size=arr.size
  if arr_size==0 #�ж�����Ԫ���Ƿ�Ϊ��
    return 0
  end
  if arr_size<=n #�ж�����Ԫ���Ƿ񲻶���n��
    arr.each do |i|
      sum_num_n += i
    end
    return sum_num_n
  end
  
  arr_sort=arr.sort #�������ٽ�ȡ����n����
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
  if(reg_1===s[0].downcase && reg_2===s[0].downcase) #�ж���λ�Ƿ�Ϊ��ΪԪ����Ӣ����ĸ
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  reg=/[^01]/
  if(reg===s) #�ж����Ƿ�Ϊ��������
    return false
  elsif(s.to_i.to_s(10).to_i%4==0) #�жϴ˶��������Ƿ��ܱ�4����
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price) #���캯��
    @isbn=isbn
    @price=price
    if(@isbn===""||@price<=0) #�쳣����
      raise ArgumentError
    end
  end

 #set,get����
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

  def price_as_string #price����
    puts "$"+format("%.2f", @price)
  end
end
  begin
    # a = BookInStock.new(123,2)
    # #a.set_price(15.2)
    # a.get_price
    # a.price_as_string  
    rescue ArgumentError=>e
      puts "�������󣬴���ΪISBNΪ�գ����߼۸�<=0"
  end

