class Triangle
  def self.isValid?(a, b, c)
    result = a + b > c && b + c > a && a + c > b
    result
  end
end

def process(acc, list)
  return acc if list.length < 3
  batch = [[], [], []]
  triangles = list[0..2]
  triangles.each do |t|
    a, b, c = t.split(' ')
    batch[0].push(a)
    batch[1].push(b)
    batch[2].push(c)
  end
  batch.each do |b|
    acc += 1 if Triangle.isValid?(b[0].to_i, b[1].to_i, b[2].to_i)
  end
  process(acc, list[3..-1])
end
