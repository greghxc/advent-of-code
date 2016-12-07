require_relative '../main/day_07/lib'

RSpec.describe IpAddress, '#tls' do
  let(:input) do
    [
      ['abba[mnop]qrst',true],
      ['abcd[bddb]xyyx', false],
      ['aaaa[qwer]tyui', false],
      ['ioxxoj[asdfgh]zxcvbn', true]
    ]
  end

  let(:input_ssl) do
    [
      ['aba[bab]xyz', true],
      ['xyx[xyx]xyx', false],
      ['aaa[kek]eke', true],
      ['zazbz[bzb]cdb', true],
      ['ttttttt[azatzaz]tttttttt', false],
      ['aba[baba]ttt', true],
      # ['zaz[zaza]abc', true],
      # ['zaz[zaz]abc[aza]', true],
      ['nqwjdcnwfxkdglllft[gbawkxvzhyiprfenf]ysybkzwywpqwerm[cwsthmeytiuialllzxx]plcctxffnigyhdfmndc[kyyvjcfkxfofxfsrw]cwynasabqneione', false]
    ]
  end

  context('day one') do
    it 'returns expected code' do
      input.each do |i|
        ip = IpAddress.new(i[0])
        expect(ip.tls?).to eq(i[1])
      end
    end
  end

  context('day two') do
    it 'returns expected code' do
      input_ssl.each do |i|
        ip = IpAddress.new(i[0])
        expect(ip.ssl?).to eq(i[1])
      end
    end
  end
end