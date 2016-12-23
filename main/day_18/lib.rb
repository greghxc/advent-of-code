class Room
  def initialize(seed_row)
    @rows = [seed_row]
  end

  def safe(rows)
    until @rows.length == rows
      @rows << Row.new(@rows.last.tiles.map.with_index do |_, i|
        @rows.last.trap?(i) ? "^" : "."
      end.join)
    end
    # display
    (@rows.length * @rows[0].length) - (@rows.flat_map { |r| r.tiles }.reduce(:+))
  end

  def display
    @rows.each { |r| puts r.print }
  end
end

class Row
  attr_accessor :tiles
  def initialize(row_def)
    @tiles = row_def
               .gsub(/./, "." => "0", "^" => "1")
               .chars.map { |c| c.to_i }
  end

  def length
    @tiles.length
  end

  def print
    # puts @tiles.inspect
    @tiles.map { |t| t > 0 ? "^" : "." }.join
  end

  def trap?(index)
    # puts "trap eval: #{index}, #{@tiles[[index - 1, 0].max, index + 1].inspect}, #{@tiles}"
    @tiles[[index - 1, 0].max..index + 1].reduce(:+) == @tiles[index] + 1
  end
end