require_relative 'lib'

@data = IO.readlines('main/input/day_09_input_jon.txt')

def part_one
  @data.each { |d| puts Decompressor.length(d) }
end

part_one
