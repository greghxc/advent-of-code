class DecompressorV1
  def self.length(input)
    output = ''
    i = 0
    until i >= input.length do
      m = /^\(([0-9]+)x([0-9]+)\)/.match(input[i..-1])
      if m
        output += input[i..-1][m.offset(0)[1]..m.offset(0)[1] - 1 + m[1].to_i] * m[2].to_i
        i = i + m[0].length + m[1].to_i
      else
        output += input[i]
        i += 1
      end
    end
    output.gsub(/\s+/, '').length
  end
end

class DecompressorV2
  def self.length(input)
    mult = input.chars.map do |c|
      c =~ /[A-Z]/ ? 1 : 0
    end
    regex = /\(([0-9]+)x([0-9]+)\)/
    input.scan(regex) do |c|
      m = [c, Regexp.last_match.offset(0)[1]]
      (m[1]..m[1] + m[0][0].to_i).each do |i|
        mult[i - 1] = mult[i - 1] * m[0][1].to_i
      end
    end
    mult.reduce(0, :+)
  end
end
