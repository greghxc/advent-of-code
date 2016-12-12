require_relative 'lib'

@data = IO.readlines('main/input/day_07_jon.txt')

def part_one
  puts @data.map { |l| IpAddress.new(l.strip).tls? }.count(true)
end

def part_two
  puts @data.map { |l| IpAddress.new(l.strip).ssl? }.count(true)
end

# part_one
part_two