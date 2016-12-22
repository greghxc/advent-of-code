require_relative '../main/day_15/lib'

RSpec.describe 'Day 14', 'run' do
  describe 'proccess' do
    it 'works' do
      stack = DiscStack.new(
        Disc.new(5, 4),
        Disc.new(2, 1)
      )
      expect(stack.first_pass).to eq(5)
    end
  end
end
