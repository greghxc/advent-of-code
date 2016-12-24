RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative 'lib'

def part_one
  elephant = Elephant.new(3018458)
  puts elephant.lms(1)
end

def part_two
  elephant = Elephant.new(3018458)
  # elephant = Elephant.new(100)
  puts elephant.steal_circle
end


# part_one
part_two
