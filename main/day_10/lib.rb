class Bot
  def initialize(high, low, bot_list, bot_num)
    @bot_num = bot_num
    @high_to = high
    @low_to = low
    @bot_list = bot_list
    @values = []
    puts "Initialized Bot #{@bot_num}"
  end

  def deposit(value)
    puts "Bot #{@bot_num} received #{value}"
    @values << value
    drop_off if @values.length == 2
  end

  private

  def drop_off
    puts "Bot #{@bot_num} evaluating: #{@values}"
    @values.sort!
    puts "Bot #{@bot_num} give #{@values[0]} to #{@low_to.inspect}"
    dep(@values[0],@low_to)
    puts "Bot #{@bot_num} give #{@values[1]} to #{@high_to.inspect}"
    dep(@values[1],@high_to)
  end

  def dep(value, location)
    case location[0]
    when 'bot'
      @bot_list['bot'][location[1]].deposit(value)
    when 'output'
      @bot_list['output'][location[1]] << value
    end
  end
end
