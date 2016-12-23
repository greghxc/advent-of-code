RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative '../main/day_18/lib'

RSpec.describe 'Day 18', 'run' do
  describe 'proccess' do
    it 'generate' do
      input = ".^^.^.^^^^"
      room = Room.new(Row.new(input))
      expect(room.safe(10)).to eq(38)
    end
    it 'test trap' do
      row = Row.new('.^^.^.^^^^')
      result = [
        true, true, true, false, false, false, true, false, false, true
      ]
      result.each_with_index do |r, i|
        expect(row.trap?(i)).to eq(r)
      end
    end
  end
end
