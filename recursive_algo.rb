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

  def find_index_of(num)
    a,b = self,''
    c = Array(0..a.size)
    c.each do |i|
      if a[i] == num
        b = i
        b += 1
        break
      else
        b = "#{num} don't exist in array!"
      end
    end
    b
  end
end

a = Array(1..10)
c = 'mujer'
include Factorial
print c.str_rev, "\n"
puts 3.num_root(8)
puts 3.num_root(9)
puts a.find_index_of(7)
puts c.find_index_of('m')
puts 3.num_factorial
puts 10.num_factorial_rec
