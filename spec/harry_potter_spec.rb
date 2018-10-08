require_relative "../harry_potter/calculator"

RSpec.describe "Calculates the correct discounted price of books" do

  it "checks that one book costs 8 euro" do
    expect(calculate([1])).to eq 8.00
  end

  it "checks that 2 books of the same kind equal 16 euro" do
    expect(calculate([1,1])).to eq 16.00
  end

  it "checks that 2 books of a different kind have a 5% discount" do
    expect(calculate([1,2])).to eq 15.20
  end

  it "checks that 3 books of a different kind have a 10% discount" do
    expect(calculate([1,2,3])).to eq 21.60
  end

  it "checks that 4 books of a different kind have a 20% discount" do
    expect(calculate([1,2,3,4])).to eq 25.60
  end


  it "checks that 5 books of a different kind have a 25% discount" do
    expect(calculate([1,2,3,4,5])).to eq 30.00
  end
end
