require_relative '../main/day_09/lib'

RSpec.describe 'Decompressors', '.length' do
  let(:input) do
    [
      ['ADVENT', 'ADVENT'.length],
      ['A(1x5)BC', 'ABBBBBC'.length],
      ['(3x3)XYZ', 'XYZXYZXYZ'.length],
      ['A(2x2)BCD(2x2)EFG', 'ABCBCDEFEFG'.length],
      ['(6x1)(1x3)A', '(1x3)A'.length],
      ['X(8x2)(3x3)ABCY', 'X(3x3)ABC(3x3)ABCY'.length]
    ]
  end

  let(:input2) do
    [
      ['(3x3)XYZ', 'XYZXYZXYZ'.length],
      ['X(8x2)(3x3)ABCY', 'XABCABCABCABCABCABCY'.length],
      ['(27x12)(20x12)(13x14)(7x10)(1x12)A', 241_920],
      ['(1x90)A', 90],
      ['(25x3)(3x3)ABC(2x3)XY(5x2)PQRSTX(18x9)(3x2)TWO(5x7)SEVEN', 445]
    ]
  end

  context('day one') do
    it 'returns expected code' do
      input.each { |i| expect(DecompressorV1.length(i[0])).to eq(i[1]) }
    end
  end

  context('day two') do
    it 'returns expected code' do
      input2.each { |i| expect(DecompressorV2.length(i[0])).to eq(i[1]) }
    end
  end
end
