require_relative '../main/day_10/lib'

RSpec.describe 'Decompressors', '.length' do
  let(:input) do
    [
      'value 5 goes to bot 2',
      'bot 2 gives low to bot 1 and high to bot 0',
      'value 3 goes to bot 1',
      'bot 1 gives low to output 1 and high to bot 0',
      'bot 0 gives low to output 2 and high to output 0',
      'value 2 goes to bot 2'
    ]
  end

  context('day one') do
    it 'returns expected code' do
      bot_list = { 'bot' => [], 'output' => [] }
      input.each do |ins|
        bot_match = /^bot ([0-9]+).+?(bot|output) ([0-9]+).+?(bot|output) ([0-9]+)/
        bot_match.match(ins) { |m| bot_list['bot'][m[1].to_i] = Bot.new([m[4], m[5].to_i], [m[2], m[3].to_i], bot_list, m[1].to_i) }
      end
      input.each do |ins|
        value_match = /^value ([0-9]+).+?([0-9]+)/
        value_match.match(ins) { |m| bot_list['bot'][m[2].to_i].deposit(m[1].to_i) }
      end
    end
  end
end
