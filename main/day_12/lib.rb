class AssProc
  def initialize(registers = {})
    @registers = registers
    @instuctions = []
    @cursor = 0
  end

  def cpy(i, r)
    if @registers[i]
      @registers[r] = @registers[i].to_i
    else
      @registers[r] = i.to_i
    end
    @cursor += 1
  end

  def inc(r)
    @registers[r] += 1
    @cursor += 1
  end

  def dec(r)
    @registers[r] += -1
    @cursor += 1
  end

  def jnz(r, i)
    test_val = @registers[r] ? @registers[r] : r.to_i
    modifier = test_val == 0 ? 1 : i.to_i
    puts "jumping: #{modifier} (#{i})"
    @cursor += modifier
  end

  def run_ins(ins)
    begin
    puts "cursor: #{@cursor}, ins: #{ins}, reg: #{@registers.inspect}"
    ass_matcher = /([a-z]{3}) ([a-z0-9\-]+)(?: ([a-z0-9\-]+))*/
    ass_matcher.match(ins) do |m|
      case m[1]
      when 'cpy'
        cpy(m[2], m[3])
      when 'inc'
        inc(m[2])
      when 'dec'
        dec(m[2])
      when 'jnz'
        jnz(m[2], m[3])
      else
        puts "bad instruction: #{ins}"
        @cursor = @instructions.length + 1
      end
    end
    rescue
      raise "#{ins}: #{@registers.inspect}"
    end
  end

  def run(instructions)
    @instructions = instructions.split(/\n/).compact
    run_ins(@instructions[@cursor]) until @cursor >= @instructions.length
    @registers
  end
end
