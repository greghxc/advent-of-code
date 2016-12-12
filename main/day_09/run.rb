RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}
require_relative 'lib'

@data = IO.readlines('main/input/day_09_input.txt')

def part_one
  @data.each { |d| puts DecompressorV1.length(d) }
end

def part_two
  @data.each { |d| puts DecompressorV2.length(d) }
end

part_one
part_two
