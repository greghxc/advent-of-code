require_relative 'lib'
@data = IO.readlines('main/input/day_10_input.txt').sort

def part_one
  bot_list = { 'bot' => [], 'output' => Array.new(200, []) }
  @data.each do |ins|
    bot_match = /^bot ([0-9]+).+?(bot|output) ([0-9]+).+?(bot|output) ([0-9]+)/
    bot_match.match(ins) { |m| bot_list['bot'][m[1].to_i] = Bot.new([m[4], m[5].to_i], [m[2], m[3].to_i], bot_list, m[1].to_i) }
  end
  @data.each do |ins|
    value_match = /^value ([0-9]+).+?([0-9]+)/
    value_match.match(ins) { |m| bot_list['bot'][m[2].to_i].deposit(m[1].to_i) }
  end

  puts "0: #{bot_list['output'][0]}"
  puts "1: #{bot_list['output'][1]}"
  puts "2: #{bot_list['output'][2]}"
end

part_one