require_relative 'lib'

def part_one
  data = IO.readlines('main/input/day_six_input.txt')
  cf = CodeFinder.new
  puts cf.translate(data)
end

def part_two
  data = IO.readlines('main/input/day_six_input.txt')
  cf = CodeFinder.new
  puts cf.translate(data, 2)
end

part_one
part_two