require 'digest/md5'

class Pad
  def initialize(salt, stretch = 0)
    @salt = salt
    @stretch = stretch
  end
  
  def next(x)
    holding = {}
    next_keys = []
    i = 0

    until next_keys.length >= x
      match(i, 3, @stretch)[0..0].each do |c3|
        match(i, 5, @stretch).each do |c5|
          holding[c5].each do |h|
            next_keys << h if h >= i - 1000
          end
          holding[c5] = []
        end
        holding[c3] = [] unless holding[c3]
        holding[c3] << i
      end
      i += 1
    end
    next_keys.each_with_index do |k, i|
    end
    next_keys[0..x - 1]
  end

  private

  def match(index, matches, stretch)
    md5 = hash_it(@salt + index.to_s, stretch + 1)
    md5.scan(/(?:(.)\1{#{matches - 1}})/).flat_map { |v| v }
  end

  def hash_it(str, rem)
    return str if rem == 0
    hash_it(Digest::MD5.hexdigest(str), rem - 1)
  end
end
