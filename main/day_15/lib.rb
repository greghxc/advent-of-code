class DiscStack
  def initialize(*discs)
    @discs = discs
  end

  def first_pass
    i = 0
    loop do
      #puts "start time: #{i}"
      r = @discs.map.with_index do |d, s|
        d.clear?(i + s + 1)
      end
      #puts r.inspect
      break if r.all?
      i += 1
    end
    i
  end
end

class Disc
  def initialize(positions, start)
    @positions = positions
    @start = start
  end

  def clear?(time)
    #puts "#{@start} + #{time} % #{@positions} == 0"
    #puts (@start + time) % @positions == 0
    #sleep(0.5)
    (@start + time) % @positions == 0
  end
end
