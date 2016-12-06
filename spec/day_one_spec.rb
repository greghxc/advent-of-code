require_relative '../main/day_01/lib'

RSpec.describe TaxiGrid, '#distance' do
  let(:tg) { TaxiGrid.new }
  it 'returns expected code' do
    test = 'R5, L5, R5, R3'
    expect(tg.run_program(test)).to eq('10, 2')
  end
  it 'stop on second visit' do
    test = 'R8, R4, R4, R8'
    expect(tg.run_til_revisit(test)).to eq('4, 0')
  end
end
