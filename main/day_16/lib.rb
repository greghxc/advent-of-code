class FillerData
  def self.generate(length, seed)
    return seed[0..length - 1] if seed.length >= length
    new_seed = [seed, '0', seed.reverse.gsub(/./, '0' => 1, '1' => '0')].join
    generate(length, new_seed)
  end

  def self.check(sum)
    return sum if sum.length.odd?
    new_sum = sum.scan(/../).map { |s| s =~ /(.)\1/ ? 1 : 0 }.join
    check(new_sum)
  end
end
