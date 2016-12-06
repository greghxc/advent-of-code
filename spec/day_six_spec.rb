require_relative '../main/day_06/lib'

RSpec.describe CodeFinder, '#translate' do
  let(:cf) { CodeFinder.new }
  let(:input) do
    %w(eedadn drvtee eandsr raavrd atevrs tsrnev sdttsa
       rasrtv nssdts ntnada svetve tesnvt vntsnd vrdear
       dvrsen enarar)
  end

  context('day one') do
    it 'returns expected code' do
      expect(cf.translate(input)).to eq('easter')
    end
  end

  context('day two') do
    it 'returns expected code' do
      expect(cf.translate(input, 2)).to eq('advent')
    end
  end
end
