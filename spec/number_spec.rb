RSpec.describe "Ruby Arrays" do
  it "can be created like any other object" do
    empty = Array.new

    expect( empty.class ).to eq Array
    expect( empty.size ).to eq 0
  end
