require_relative '../main/day_14/lib'

RSpec.describe 'Day 14', 'run' do
  describe 'proccess' do
    it 'works' do
      pad = Pad.new('abc')
      expect(pad.next(64).last).to eq(22_728)
    end
    it 'works' do
      pad = Pad.new('abc', 2016)
      expect(pad.next(64).last).to eq(22_551)
    end
  end
end
