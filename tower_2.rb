require 'pry'

class Array

  def < (other_array)
    if other_array[0] == nil
      other_value = 0
    else
      other_value = other_array[0]
    end
    if self[0] == nil
      self_value = 0
    else
      self_value = self[0]
    end
    return self_value < other_value
  end

  def > (other_array)
    if other_array[0] == nil
      other_value = 0
    else
      other_value = other_array[0]
    end
    if self[0] == nil
      self_value = 0
    else
      self_value = self[0]
    end
    return self_value > other_value
  end

  def is_largest_disk?(compare_1, compare_2)
    if (compare_1[0] == nil) || (compare_2[0] == nil)
      return false
    else
      return (self[0] > compare_1[0]) || (self[0] > compare_2[0])
    end
  end

  def find_target(compare_1, compare_2)
    if (compare_1[0] == nil) || (self[0] < compare_1[0])
      return compare_1
    else
      return compare_2
    end
  end

end

a = [1,5,3]
b = [2,0]

if a < b
  puts "less than works\n\n"
end

if b > a
  puts "greater than works\n\n"
end

b=[]
a

a > b
b < a
a > b
a < b


if a > b
  puts "still works with empty array\n\n"
end


class Tower
  public

  attr_accessor :a1, :a2, :a3, :move_counter

  def initialize
    @a1 = [1, 2, 3, 4, 5]
    @a2 = []
    @a3 = []
    @move_counter = 0
  end

  def st
    n = 5
    move(n, a1, a2, a3)
  end

  def transfer(sender, receiver)
    if receiver.length == 0
      receiver[0] = sender.shift
    else
      receiver.insert(0, sender.shift)
    end
    # move_counter
    # move_counter += 1                   # ~> NoMethodError: undefined method `+' for nil:NilClass
    puts "\n\nArrays ="
    puts "1. #{a1.inspect}"
    puts "2. #{a2.inspect}"
    puts "3. #{a3.inspect}"
  end

  # def move
  #   # binding.pry
  #   if a1.empty? && a2.empty?
  #     return
  #   else
  #     if !a1.empty?
  #       if !a1.is_largest_disk?(a2, a3)
  #         target = a1.find_target(a2, a3)
  #         transfer(a1, target)
  #       elsif !a2.is_largest_disk?(a1, a3)
  #         target = a2.find_target(a1, a3)
  #         transfer(a2, target)
  #       else
  #         target = a3.find_target(a1, a2)
  #         transfer(a3, target)
  #       end
  #     end
  #   end
  #   move
  # end

  def move (n, a, b, c)
    move(n-1, a, b, c)

    transfer(a, b)

    move(n-1, b, c, a)
  end



end

if __FILE__ ==$0
  # binding.pry
  t = Tower.new
  t.st
end
