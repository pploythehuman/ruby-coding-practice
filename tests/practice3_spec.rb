require_relative '../practice3.rb'

RSpec.describe '#DiverseWord' do
  it 'should no return 3 consecutive characters' do
    result = solution(0, 0, 0)
    expect(result.count('a')).to eq(0)
    expect(result.count('b')).to eq(0)
    expect(result.count('c')).to eq(0)
  end

  it 'should no return 3 consecutive characters' do
    result = solution(1, 1, 7)
    expect(result.count('a')).to eq(1)
    expect(result.count('b')).to eq(1)
    expect(result.count('c')).to eq(6)
  end

  it 'should no return 3 consecutive characters' do
    result = solution(1, 3, 1)
    expect(result.count('a')).to eq(1)
    expect(result.count('b')).to eq(3)
    expect(result.count('c')).to eq(1)
  end

  it 'should no return 3 consecutive characters' do
    result = solution(0, 1, 8)
    expect(result.count('a')).to eq(0)
    expect(result.count('b')).to eq(1)
    expect(result.count('c')).to eq(4)
  end

end
