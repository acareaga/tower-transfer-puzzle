require 'pry'

class Tower

  def initialize
    @array_1 = [1, 2, 3, 4, 5]
    @array_2 = []
    @array_3 = []
    @move_counter = 0
    move(@array_1, @array_2, @array_3)
  end

  def transfer(a, b)
    # binding.pry
    if (a[0] == nil)
      binding.pry
      puts "Hit nil transer"
    else
      if b[0] == nil
        # binding.pry
        b[0] = (a.shift)
        @move_counter += 1
      elsif (a[0] < b[0])
        # binding.pry
        puts "Tried to move a larger disk onto a smaller"
      else
        # binding.pry
        b[0].insert(a.shift)
        @move_counter += 1
      end
    end
  end

def move (a, b, c=nil)
  puts "Move Number: #{@move_counter}"
  puts "Array 1=#{@array_1}\nArray 2=#{@array_2}\nArray 3=#{@array_3}\n\n"

  unless @array_1.empty? && @array_2.empty?
    transfer(a,b)
    move(b,c)

    # if
  end
end


end

if __FILE__ ==$0
  t = Tower.new
end
