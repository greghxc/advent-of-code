require_relative '../main/day_04/lib'

RSpec.describe Room do
  describe '#checksum' do
    it 'works' do
      raw_room = 'aaaaa-bbb-z-y-x-123[abxyz]'
      r = Room.new(raw_room)
      expect(r.checksum).to eq('abxyz')
    end
  end

  describe '#process' do
    it 'works' do
      final = 0
      data = [
        'aaaaa-bbb-z-y-x-123[abxyz]',
        'a-b-c-d-e-f-g-h-987[abcde]',
        'not-a-real-room-404[oarel]',
        'totally-real-room-200[decoy]'
      ]

      data.each do |d|
        final += Room.new(d).value.to_i
      end

      expect(final).to eq(1514)
    end
  end

  describe '#translate' do
    it 'works' do
      data = 'qzmt-zixmtkozy-ivhz-343'
      expected_result = 'very encrypted name'

      r = Room.new(data)
      expect(r.translate).to eq(expected_result)
    end
  end
end
