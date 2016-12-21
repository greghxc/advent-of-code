require_relative '../main/day_12/lib'

RSpec.describe 'Day 11', 'run' do
  describe 'proccess' do
    let(:ass_proc) { AssProc.new }
    it 'works' do
      ins = "cpy 41 a
      inc a
      inc a
      dec a
      jnz a 2
      dec a"
      
      expect(ass_proc.run(ins)['a']).to eq(42)
    end
  end
end
