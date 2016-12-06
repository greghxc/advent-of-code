require 'digest'

class Password
  def initialize(door_id)
    @door = door_id
    code = Array.new(8)

    i = 0
    until code.join.length == 8
      # puts "#{code.join.length}: #{i}" if i % 100000 == 0
      hash = Digest::MD5.hexdigest(@door + i.to_s)
      if hash[0..4] == '00000' && /[0-7]/.match(hash[5]) && code[hash[5].to_i].nil?
        code[hash[5].to_i] = hash[6]
      end
      i += 1
    end
    @code_array = code
  end

  def decode
    @code_final.join
  end
end