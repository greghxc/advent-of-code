RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative '../main/day_19/lib'

RSpec.describe 'Day 18', 'run' do
  describe 'proccess' do
    it 'generate' do
      elephant = Elephant.new(5)
      expect(elephant.lms(1)).to eq(3)
    end
    it 'generate' do
      elephant = Elephant.new(5)
      expect(elephant.steal_circle).to eq(2)
    end
  end
end
