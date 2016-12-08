class Display
  def initialize(x, y)
    @display = Array.new(y){ Array.new(x) }
  end

  def run(ins)
    words = ins.split
    case words[0]
    when 'rect'
      w = words[1].split('x')
      rect(w[0].to_i, w[1].to_i)
    when 'rotate'
      a, i = words[2].split('=')
      rotate(a,i.to_i,words[4].to_i)
    end
  end

  def lit
    @display.flat_map{ |v| v }.count(true)
  end

  def show
    @display.map{ |r| r.map { |c| c ? '#' : ' ' }.join }.join("\n")
  end

  private

  def rect(x, y)
    (0..y - 1).each do |i|
      (0..x -1).each do |j|
        @display[i][j] = true
      end
    end
  end

  def rotate(a, i, x)
    case a
    when 'x'
      mod_array = @display.transpose
      mod_array[i].rotate!((x % mod_array[i].length) * -1)
      @display = mod_array.transpose
    when 'y'
      @display[i].rotate!((x % @display[i].length) * -1)
    end
  end
end