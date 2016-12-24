class Elephant
  def initialize(size)
    @size = size
  end

  def lms(skip)
    members = [*1..@size]
    steal(members, skip)
  end

  def steal(members, skip)
    return members[0] if members.length <= 1
    members.rotate!(skip).shift
    steal(members, skip)
  end

  def steal_circle(participants = @size)
    answer_key = []
    answer_key[1] = 0

    games = [*2..participants]
    games.each do |g|
      skip = g / 2
      last_answer = answer_key[g - 1]
      loser = (last_answer + (skip > last_answer ? 1 : 2)) % g
      answer_key[g] = loser
    end
    answer_key.last
  end
end
