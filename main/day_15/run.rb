require_relative 'lib'

def part_one
  stack = DiscStack.new(
    Disc.new(7, 0),
    Disc.new(13, 0),
    Disc.new(3, 2),
    Disc.new(5, 2),
    Disc.new(17, 0),
    Disc.new(19, 7)
  )
  puts stack.first_pass
end

def part_two
  stack = DiscStack.new(
    Disc.new(7, 0),
    Disc.new(13, 0),
    Disc.new(3, 2),
    Disc.new(5, 2),
    Disc.new(17, 0),
    Disc.new(19, 7),
    Disc.new(11, 0)
  )
  puts stack.first_pass
end

part_one
part_two
