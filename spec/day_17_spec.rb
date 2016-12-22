RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative '../main/day_17/lib'

RSpec.describe 'Day 17', 'run' do
  let(:tests) do
    [
      ['ihgpwlah', 'DDRRRD'],
      ['kglvqrro', 'DDUDRLRRUDRD'],
      ['ulqzkmiv', 'DRURDRUDDLLDLUURRDULRLDUUDDDRR']
    ]
  end

  let(:tests2) do
    [
      ['ihgpwlah', 370],
      ['kglvqrro', 492],
      ['ulqzkmiv', 830]
    ]
  end

  describe 'proccess' do
    it 'generate' do
      tests.each do |t|
        maze = Maze.new(3, 3, t[0])
        expect(maze.go).to eq(t[1])
      end
    end
    it 'generate' do
      tests2.each do |t|
        maze = Maze.new(3, 3, t[0])
        expect(maze.longest).to eq(t[1])
      end
    end
  end
end
