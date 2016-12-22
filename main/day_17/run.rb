RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative 'lib'

def part_one
  maze = Maze.new(3, 3, 'qljzarfv')
  puts maze.go
end

def part_one
  maze = Maze.new(3, 3, 'qljzarfv')
  puts maze.longest
end

part_one
