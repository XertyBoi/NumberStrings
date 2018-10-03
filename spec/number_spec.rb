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

end
