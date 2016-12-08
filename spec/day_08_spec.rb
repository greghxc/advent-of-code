require_relative '../main/day_08/lib'

RSpec.describe Display, '#tls' do
  let(:display) { Display.new(7, 3) }
  
  let(:input) do
    [
      'rect 3x2',
      'rotate column x=1 by 1',
      'rotate row y=0 by 4',
      'rotate row x=1 by 1'
    ]
  end

  context('day one') do
    it 'returns expected code' do
      input.each do |i|
        # puts i
        display.run(i)
        # puts display.show
      end
      # puts display.show
      expect(display.lit).to eq(6)
    end
  end

  # context('day two') do
  #   it 'returns expected code' do
  #     input_ssl.each do |i|
  #       ip = IpAddress.new(i[0])
  #       expect(ip.ssl?).to eq(i[1])
  #     end
  #   end
  # end
end