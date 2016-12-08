require_relative 'lib'

@data = IO.readlines('main/input/day_08_input.txt')

def part_one
  display = Display.new(50, 6)
  @data.each { |i| display.run(i) }
  puts display.show
  puts display.lit
end

part_one