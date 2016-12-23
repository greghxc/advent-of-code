require_relative 'lib'

def part_one
  input = "^..^^.^^^..^^.^...^^^^^....^.^..^^^.^.^.^^...^.^.^.^.^^.....^.^^.^.^.^.^.^.^^..^^^^^...^.....^....^."
  room = Room.new(Row.new(input))
  puts room.safe(40)
end

def part_two
  input = "^..^^.^^^..^^.^...^^^^^....^.^..^^^.^.^.^^...^.^.^.^.^^.....^.^^.^.^.^.^.^.^^..^^^^^...^.....^....^."
  room = Room.new(Row.new(input))
  puts room.safe(400000)
end

part_one
part_two