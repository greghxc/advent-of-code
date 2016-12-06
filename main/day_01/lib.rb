class TaxiGrid
  def initialize
    @x = 0
    @y = 0
    @facing = 0
  end

  def turn(dir)
    dirs = { 'R' => 1, 'L' => -1 }
    @facing = (@facing + dirs[dir]) % 4
  end

  def step(steps)
    dirs = [
      ->(s) { @y += s },
      ->(s) { @x += s },
      ->(s) { @y -= s },
      ->(s) { @x -= s }
    ]
    dirs[@facing].call(steps)
  end

  def turn_and_step(turn_dir, steps)
    turn(turn_dir)
    step(steps)
  end

  def distance
    @x.abs + @y.abs
  end

  def coords
    "#{@x}, #{@y}"
  end

  def run_program(ins)
    ins.split(', ').each do |i|
      turn_and_step(i[0], i[1..-1].to_i)
    end
    coords
  end

  def run_til_revisit(ins)
    visits = []
    done = false
    ins.split(', ').each do |i|
      break if done == true
      turn(i[0])
      i[1..-1].to_i.times do
        step(1)
        if visits.include?(coords)
          done = true
          break
        else
          visits.push(coords)
        end
      end
    end
    coords
  end
end