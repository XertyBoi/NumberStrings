require_relative "../number_string/converter"

RSpec.describe "Convert ints to string number" do
  it "returns the string of a single int" do
    expect( convert(1) ).to eq "one"
  end

  it "returns the string of a single int" do
    expect( convert(5) ).to eq "five"
  end
end
