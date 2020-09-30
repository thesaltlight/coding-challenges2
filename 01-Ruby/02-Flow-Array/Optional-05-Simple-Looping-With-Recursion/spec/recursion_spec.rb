require "recursion"

describe "#sum_recursive" do

  it "should return the correct sum" do
    sum = sum_recursive(1, 3)
    expect(sum).to eq 6
  end

  it "should return -1 if min > max" do
    sum = sum_recursive(101, 100)
    expect(sum).to eq -1
  end

end