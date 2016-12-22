require_relative 'lib'

def part_one
  pad = Pad.new('cuanljph')
  r = pad.next(64)
  puts r[63]
end

def part_two
  pad = Pad.new('cuanljph', 2016)
  r = pad.next(64)
  puts r[63]
end

part_one
part_two
