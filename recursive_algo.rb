module Factorial
  def num_factorial
    return self if self <=1
    a = Array(1..self)
    a.inject(:*)
  end

  def num_factorial_rec
    return self if self <= 0
    if self <= 1
      1
    else
      self * (self - 1).num_factorial_rec
    end
  end

  def str_check
    a = self
    b = 0
    c = nil
    while b < a.size
      j = b + 1
      k  = j + 1
      if a[b] == a[k] && a[b] == a[j] && a[j] == a[k]
        c = true
        break
      else
        c = false
      end
      b += 1
    end
    c
  end

  # def elem_next(arr, key)
  #   b = 'nothing'
  #   (0..(arr.size)).each do |i|
  #     if arr[i] == key
  #       j = 1 + i
  #       b = arr[j]
  #     else
  #       b = 'no found'
  #     end
  #   end
  #   b
  # end

  def str_rev
    a = self
    c = a.split("")
    b = []
    loop do
      b.unshift(c.shift())
      break if c.empty?
    end
    b.join('')
  end

  def num_root(num)
    a,b = self,1
    a,b = a.to_f,b.to_f
    num ** (b / a)
  end

  # def find_index_of(num)
  #   b = []
  #   (0..(self.size)).each do |i|
  #     unless (self[i] === num)
  #       b << i
  #     else
  #       b = "#{num} don't exist in array!"
  #     end
  #   end
  #   b
  # end

  def check_repeating
    a,i = self,0
    c = a.gsub(/(.)(\1)*/).to_a
    b = c.select {|i| i.size >= 3}
    b[0].nil? ? false : true
  end

  def order_items(arr, arr1)
    b = arr.size + arr1.size
    c = []
    (0..(b - 1)).each do |i|
      if (i % 2) == 0
        c[i] = arr.shift
      else
        c[i] = arr1.shift
      end
    end
    c
  end
end

a = Array(1..10)
c = 'mujer'
d = 'tooongooona'
a = ['a1', 'a2', 'a3']
b = ['b1', 'b2', 'b3']
include Factorial
print c.str_rev, "\n"
puts 3.num_root(8)
puts 3.num_root(9)
# puts a.find_index_of(7)
# puts c.find_index_of('m')
puts 3.num_factorial
puts 10.num_factorial_rec
print d.check_repeating
puts c.check_repeating
puts c.str_check
puts d.str_check
# puts elem_next(a, 7)
print order_items(a, b)
