class CodeFinder
  def count_chars(data)
    count = []
    data.each do |d|
      d.chars.each_with_index do |c, i|
        count[i] = {} unless count[i]
        count[i][c] ? count[i][c] += 1 : count[i][c] = 1
      end
    end
    count
  end

  def get_char(count, day)
    grab = [
      ->(c) { c.sort_by { |_, v| v }.reverse[0][0] },
      ->(c) { c.sort_by { |_, v| v }[0][0] }
    ]
    grab[day - 1].call(count)
  end

  def translate(data, day = 1)
    result = []
    count = count_chars(data)
    count.each do |c|
      result.push(get_char(c, day))
    end

    result.join
  end
end

