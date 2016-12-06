require_relative 'lib'

def part_one
  final = 0
  data = IO.readlines('main/input/day_four_input.txt')
  data.each do |d|
    final += Room.new(d).value
  end
  puts final
end

def part_two
  data = IO.readlines('main/input/day_four_input.txt')
  data.each do |d|
    r = Room.new(d)
    puts "#{r.translate} (#{r.sector_id})" if r.valid?
  end
end

part_two