class CodeTranslator
  def find_the_number(instructions, keypad, start = '5')
    keypads = [
      {
        '1' => { 'L' => '1', 'R' => '2', 'U' => '1', 'D' => '4' },
        '2' => { 'L' => '1', 'R' => '3', 'U' => '2', 'D' => '5' },
        '3' => { 'L' => '2', 'R' => '3', 'U' => '3', 'D' => '6' },
        '4' => { 'L' => '4', 'R' => '5', 'U' => '1', 'D' => '7' },
        '5' => { 'L' => '4', 'R' => '6', 'U' => '2', 'D' => '8' },
        '6' => { 'L' => '5', 'R' => '6', 'U' => '3', 'D' => '9' },
        '7' => { 'L' => '7', 'R' => '8', 'U' => '4', 'D' => '7' },
        '8' => { 'L' => '7', 'R' => '9', 'U' => '5', 'D' => '8' },
        '9' => { 'L' => '8', 'R' => '9', 'U' => '6', 'D' => '9' }
      },
      {
        '1' => { 'L' => '1', 'R' => '1', 'U' => '1', 'D' => '3' },
        '2' => { 'L' => '2', 'R' => '3', 'U' => '2', 'D' => '6' },
        '3' => { 'L' => '2', 'R' => '4', 'U' => '1', 'D' => '7' },
        '4' => { 'L' => '3', 'R' => '4', 'U' => '4', 'D' => '8' },
        '5' => { 'L' => '5', 'R' => '6', 'U' => '5', 'D' => '5' },
        '6' => { 'L' => '5', 'R' => '7', 'U' => '2', 'D' => 'A' },
        '7' => { 'L' => '6', 'R' => '8', 'U' => '3', 'D' => 'B' },
        '8' => { 'L' => '7', 'R' => '9', 'U' => '4', 'D' => 'C' },
        '9' => { 'L' => '8', 'R' => '9', 'U' => '9', 'D' => '9' },
        'A' => { 'L' => 'A', 'R' => 'B', 'U' => '6', 'D' => 'A' },
        'B' => { 'L' => 'A', 'R' => 'C', 'U' => '7', 'D' => 'D' },
        'C' => { 'L' => 'B', 'R' => 'C', 'U' => '8', 'D' => 'C' },
        'D' => { 'L' => 'D', 'R' => 'D', 'U' => 'B', 'D' => 'D' }
      }
    ]

    current_button = start
    instructions.chars.each do |c|
      current_button = keypads[keypad][current_button][c]
    end
    current_button
  end

  def translate(instructions, keypad)
    code = ''
    cur_num = '5'

    instructions.each do |ins|
      cur_num = find_the_number(ins, keypad, cur_num)
      code += cur_num
    end
    code
  end
end