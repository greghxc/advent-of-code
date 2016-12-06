require_relative '../main/day_02/lib'

RSpec.describe CodeTranslator, '#translate' do
  let(:ct) { CodeTranslator.new }
  it 'returns expected code' do
    test = %w(
      ULL
      RRDDD
      LURDL
      UUUUD
    )

    expect(ct.translate(test, 1)).to eq('5DB3')
  end
end
