require_relative "../number_string/converter"

RSpec.describe "Convert ints to string number" do

  it "returns the string of a single int" do
    expect( convert(1) ).to eq "one"
  end

  it "returns the string of a single int" do
    expect( convert(5) ).to eq "five"
  end

  it "returns the string of a single int from 1-9" do
    expect( convert(3) ).to eq "three"
    expect( convert(7) ).to eq "seven"
    expect( convert(9) ).to eq "nine"
  end

  it "returns the string of a single int 10" do
    expect( convert(10) ).to eq "ten"
  end

  it "returns the string of a single int 11" do
    expect( convert(11) ).to eq "eleven"
  end

  it "returns the string of ints 11-19" do
    expect( convert(15) ).to eq "fithteen"
    expect( convert(17) ).to eq "seventeen"
    expect( convert(19) ).to eq "nineteen"
  end

  it "returns the string of int 20" do
    expect( convert(20) ).to eq "twenty"
  end

  it "returns the string of ints 21" do
    expect( convert(21) ).to eq "twenty one"
  end

  it "returns the string of ints 21-29" do
    expect( convert(21) ).to eq "twenty one"
    expect( convert(25) ).to eq "twenty five"
    expect( convert(29) ).to eq "twenty nine"
  end

  it "returns the string of int 30" do
    expect( convert(30) ).to eq "thirty"
  end

  it "returns the string of ints 1-99" do
    expect( convert(48) ).to eq "fourty eight"
    expect( convert(54) ).to eq "fifty four"
    expect( convert(65) ).to eq "sixty five"
    expect( convert(73) ).to eq "seventy three"
    expect( convert(82) ).to eq "eighty two"
    expect( convert(99) ).to eq "ninety nine"
  end

  it "returns the string of int 100" do
    expect( convert(100) ).to eq "one hundred"
  end

  it "returns the string of int 101" do
    expect( convert(101) ).to eq "one hundred and one"
  end

  it "returns the string of int 101-109" do
    expect( convert(103) ).to eq "one hundred and three"
    expect( convert(106) ).to eq "one hundred and six"
    expect( convert(109) ).to eq "one hundred and nine"
  end

  it "returns the string of int 110" do
    expect( convert(110) ).to eq "one hundred and ten"
  end
end
