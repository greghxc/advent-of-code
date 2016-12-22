require 'digest/md5'

class Maze
  attr_accessor :x_max, :y_max, :code

  def initialize(x, y, code)
    @x_max = x
    @y_max = y
    @code = code
  end

  def go(stack = [Coord.new(0, 0, self)])
    raise 'ran out of stack!' if stack.empty?
    cur_loc = stack.shift
    return cur_loc.path if cur_loc.to_s == "#{@x_max},#{@y_max}"
    cur_loc.options.each do |o|
      stack << o
    end
    go(stack)
  end

  def longest(endings = [], stack = [Coord.new(0, 0, self)])
    return endings.sort.last if stack.empty?
    cur_loc = stack.shift
    if cur_loc.to_s == "#{@x_max},#{y_max}"
      endings << cur_loc.path.length
    else
      cur_loc.options.each do |o|
        stack << o
      end
    end
    longest(endings, stack)
  end
end

class Coord
  attr_accessor :path

  def initialize(x, y, maze, path = "")
    @x = x
    @y = y
    @maze = maze
    @path = path
  end

  def to_s
    "#{@x},#{@y}"
  end

  def options
    hash = Digest::MD5.hexdigest(@maze.code + @path)[0..3]
    valid = %w(U D L R).map.with_index do |d, i|
      hash[i] =~ /[b-f]/ ? d : nil
    end.compact

    options = []
    options << Coord.new(@x + 1, @y, @maze, @path + "R") unless @x == @maze.x_max || !valid.include?('R')
    options << Coord.new(@x, @y + 1, @maze, @path + "D") unless @y == @maze.y_max || !valid.include?('D')
    options << Coord.new(@x - 1, @y, @maze, @path + "L") unless @x == 0 || !valid.include?('L')
    options << Coord.new(@x, @y - 1, @maze, @path + "U") unless @y == 0 || !valid.include?('U')
    options
  end
end
