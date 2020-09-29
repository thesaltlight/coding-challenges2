require "shuffle"

describe '#shuffle' do
  it 'should return an array' do
    expect(shuffle([])).to be_a Array
  end

  it 'should sort an array randomly' do
    a = (1..100).to_a
    b = shuffle(a)
    # array_b must not be empty
    expect(b).not_to be_nil
     # the number of elements in array_b must match array_a
    expect(b.length).to eq a.length
    # array_b mustsn't have the same elements in the same order as array_a
    expect(a).not_to eq b
    # array_b must have the same elements as array_a
    a.to_a.each do |element|
      expect(b).to include(element)
    end
  end
end