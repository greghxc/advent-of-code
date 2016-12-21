require_relative '../main/day_13/lib'

RSpec.describe 'Day 13', 'run' do
  describe 'proccess' do
    it 'works' do
      maze = Maze.new(10)
      expect(maze.go(7, 4)).to eq(11)
    end
  end
end
