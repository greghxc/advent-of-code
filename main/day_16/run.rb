RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative 'lib'

def part_one
  data = FillerData.generate(272, '10111011111001111')
  puts "data (#{data.length}): #{data}"
  puts 'check: ' + FillerData.check(data)
end

def part_two
  data = FillerData.generate(35651584, '10111011111001111')
  puts "data (#{data.length})"
  puts 'check: ' + FillerData.check(data)
end

part_one
part_two
