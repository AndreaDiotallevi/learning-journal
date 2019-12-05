require "get_middle"

describe "#get_middle" do

  it "returns the middle character is the word's length is even" do
    word = "test"
    expect(word.get_middle).to eq 'es'
  end

  it "returns the middle 2 characters if the word's length is odd" do
    word = "testing"
    expect(word.get_middle).to eq "t"
  end

end