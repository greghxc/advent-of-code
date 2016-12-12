class Bot
  def initialize(high, low)
    @high_to = high
    @low_to = low
    @values = []
  end

  def deposit(value)
    @values << value
    drop_off if @values.length == 2
  end

  private

  def drop_off
    puts "evaluating: #{@values}"
    @values.sort.each do |v|

    end
  end
end
