class Maze
  attr_reader :key

  def initialize(key)
    @discovered = { '1,1' => 0 }
    @key = key
  end

  def go(x, y)
    target = Coord.new(x, y, self)
    stack = [Coord.new(1, 1, self)]
    _go(stack, target)
    step_to(target)
  end

  def locs_within(max_steps)
    stack = [Coord.new(1, 1, self)]
    _locs_within(stack, max_steps).length
  end

  private

  def _locs_within(stack, max_steps)
    raise 'stack empty before solution found' if stack.empty?
    cur_loc = stack.shift
    return @discovered if step_to(cur_loc) >= max_steps
    cur_loc.options.map do |o|
      unless @discovered[o.to_s]
        @discovered[o.to_s] = cur_loc.to_s
        stack << o
      end
    end
    _locs_within(stack, max_steps)
  end

  def _go(stack, target)
    return if @discovered[target.to_s]
    raise 'stack empty before solution found' if stack.empty?
    cur_loc = stack.shift
    cur_loc.options.each do |o|
      unless @discovered[o.to_s]
        @discovered[o.to_s] = cur_loc.to_s
        stack << o
      end
    end
    _go(stack, target)
  end

  def step_to(coord)
    raise 'coord not found!' unless @discovered[coord.to_s]
    cursor = coord.to_s
    steps = 0
    until @discovered[cursor] == 0
      cursor = @discovered[cursor]
      steps += 1
    end
    steps
  end
end

class Coord
  def initialize(x, y, maze)
    @x = x
    @y = y
    @maze = maze
  end

  def to_s
    "#{@x},#{@y}"
  end

  def options
    options = []
    options << Coord.new(@x + 1, @y, @maze)
    options << Coord.new(@x, @y + 1, @maze)
    options << Coord.new(@x - 1, @y, @maze) unless @x == 0
    options << Coord.new(@x, @y - 1, @maze) unless @y == 0
    options.map do |o|
      o.valid? ? o : nil
    end.compact
  end

  def valid?
    test_val = @x * @x + 3 * @x + 2 * @x * @y + @y + @y * @y
    test_val += @maze.key
    test_val.to_s(2).count('1').even?
  end
end
