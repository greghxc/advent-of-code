class Elephant
  def initialize(size)
    @size = size
  end

  def lms(skip)
    members = [*1..@size]
    steal(members, skip)
  end

  def steal(members, skip, rem = 0)
    return members[0] if members.length <= 1
    new_mem = members.map.with_index do |e, i|
      (i + 1 + rem) % (skip + 1) == 0 ? nil : e
    end.compact
    new_rem = (members.length + rem) % (skip + 1)
    steal(new_mem, skip, new_rem)
  end

  def steal_circle(members = [*1..@size], i = 0)
    return members[0] if members.length <= 1
    members.rotate!(members.length / 2).shift
    steal_circle(members, i + 1)
  end
end
