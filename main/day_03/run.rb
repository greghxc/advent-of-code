require_relative 'lib'

def part_one
  triangles = IO.readlines('main/input/day_three_input.txt')
  count = 0
  triangles.each do |t|
    a, b, c = t.split(' ')
    count += 1 if Triangle.isValid?(a.to_i, b.to_i, c.to_i)
  end
  puts count
end

def part_two
  triangles = IO.readlines('main/input/day_three_input.txt')
  puts process(0, triangles)
end

part_one
part_two