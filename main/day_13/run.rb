RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative 'lib'

def part_one
  maze = Maze.new(1364)
  puts maze.go(31, 39)
end

def part_two
  maze = Maze.new(1364)
  puts maze.locs_within(50)
end

part_one
part_two
