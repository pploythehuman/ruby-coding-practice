require_relative '../practice2.rb'

RSpec.describe "#TreeVisibility" do
  it "returns the number of visible nodes" do
    tree1 = [5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]]
    tree2 = [8, [2, [8, nil, nil], [7, nil, nil]], [6, nil, nil]]

    expect(solution(tree1)).to eq(4)
    expect(solution(tree2)).to eq(2)
  end

  it "empty tree" do
    tree = nil
    expect(solution(tree)).to eq(0)
  end

  it "tree with all the same values" do
    tree1 = [5, [5, [5, 5, nil], [5, 5, nil]], [5, [5, 5, nil], 5]]
    tree2 = [5, [5], [5, [5], 5]]
    expect(solution(tree1)).to eq(10)
    expect(solution(tree2)).to eq(5)
  end
end
