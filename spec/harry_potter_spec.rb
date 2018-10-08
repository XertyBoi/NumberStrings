require_relative "../harry_potter/calculator"

RSpec.describe "Calculates the correct discounted price of books" do

  it "checks that one book costs 8 euro" do
    expect(calculate([1])).to eq 8
  end

  it "checks that 2 books of the same kind equal 16 euro" do
    expect(calculate([1,1])).to eq 16
  end

end
