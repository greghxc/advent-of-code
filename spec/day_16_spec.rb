require_relative '../main/day_16/lib'

RSpec.describe 'Day 16', 'run' do
  describe 'proccess' do
    it 'generate' do
      expect(FillerData.generate(20, '10000')).to eq('10000011110010000111')
    end
    it 'hash' do
      expect(FillerData.check('10000011110010000111')).to eq('01100')
    end
  end
end
