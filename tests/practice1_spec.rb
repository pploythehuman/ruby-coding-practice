require_relative '../practice1.rb'

RSpec.describe "#DecReprSeniorCoding" do
  it "returns the largest number in the family of N" do
    expect(solution(123)).to eq(321)
    expect(solution(353)).to eq(533)
    expect(solution(9876543210)).to eq(9876543210)
  end

  it "numbers with duplicates digits" do
    expect(solution(1212)).to eq(2211)
    expect(solution(4115)).to eq(5411)
  end

  it "single digit numbers" do
    expect(solution(1)).to eq(1)
    expect(solution(0)).to eq(0)
  end

  it "numbers with identical digits" do
    expect(solution(1111)).to eq(1111)
    expect(solution(22)).to eq(22)
  end
end
