class Room
  def initialize(raw_name)
    @roomname = /[a-z|-]+/.match(raw_name).to_s.tr('-', '')
    @roomid = /[0-9]+/.match(raw_name).to_s.tr('-', '')
    @checksum = /\[[a-z]+\]+/.match(raw_name).to_s.gsub(/[\[|\]]/, '')
    @translated_name = translate_raw_name(/[a-z|-]+/.match(raw_name).to_s).strip
  end

  def valid?
    @checksum == checksum
  end

  def value
    return 0 unless valid?
    @roomid
  end

  def checksum
    tally = []
    result = []
    @roomname.chars.uniq.sort.each do |c|
      tally.push([c, @roomname.count(c)])
    end
    tally.sort! do |a, b|
      if a[1] == b[1]
        a[0] <=> b[0]
      else
        b[1] <=> a[1]
      end
    end
    tally[0..4].each do |c|
      result.push(c[0])
    end
    result.join
  end

  def translate
    @translated_name
  end

  def sector_id
    @roomid
  end

  def translate_raw_name(raw_name)
    n = raw_name.tr('-', ' ')
    result = []
    n.chars.each do |c|
      result.push(translate_char(c))
    end
    result.join
  end

  def translate_char(c)
    return c unless /[a-z]/.match(c)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    alphabet[(alphabet.index(c) + @roomid.to_i) % 26]
  end
end