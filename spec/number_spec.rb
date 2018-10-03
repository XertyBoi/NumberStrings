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

  it "returns the string of ints 100-199" do
    expect( convert(123) ).to eq "one hundred and twenty three"
    expect( convert(137) ).to eq "one hundred and thirty seven"
    expect( convert(162) ).to eq "one hundred and sixty two"
    expect( convert(181) ).to eq "one hundred and eighty one"
    expect( convert(199) ).to eq "one hundred and ninety nine"
  end

  it "returns the string of int 200" do
    expect( convert(200) ).to eq "two hundred"
  end

  it "returns the string of int 201" do
    expect( convert(201) ).to eq "two hundred and one"
  end

  it "returns the string of int 210" do
    expect( convert(210) ).to eq "two hundred and ten"
  end

  it "returns the string of ints up to 999" do
    expect( convert(252) ).to eq "two hundred and fifty two"
    expect( convert(345) ).to eq "three hundred and fourty five"
    expect( convert(476) ).to eq "four hundred and seventy six"
    expect( convert(598) ).to eq "five hundred and ninety eight"
    expect( convert(618) ).to eq "six hundred and eighteen"
    expect( convert(730) ).to eq "seven hundred and thirty"
    expect( convert(812) ).to eq "eight hundred and twelve"
    expect( convert(999) ).to eq "nine hundred and ninety nine"
  end

  it "returns the string of int 1000" do
    expect( convert(1000) ).to eq "one thousand"
  end

  it "returns the string of int 1001" do
    expect( convert(1001) ).to eq "one thousand and one"
  end

  it "returns the string of int 1000-1009" do
    expect( convert(1002) ).to eq "one thousand and two"
    expect( convert(1009) ).to eq "one thousand and nine"
  end


    it "returns the string of int 1000-1999" do
      expect( convert(1104) ).to eq "one thousand one hundred and four"
      expect( convert(1217) ).to eq "one thousand two hundred and seventeen"
      expect( convert(1422) ).to eq "one thousand four hundred and twenty two"
      expect( convert(1567) ).to eq "one thousand five hundred and sixty seven"
      expect( convert(1691) ).to eq "one thousand six hundred and ninety one"
      expect( convert(1760) ).to eq "one thousand seven hundred and sixty"
      expect( convert(1832) ).to eq "one thousand eight hundred and thirty two"
      expect( convert(1910) ).to eq "one thousand nine hundred and ten"
    end

    it "returns the string of int 2000" do
      expect( convert(2000) ).to eq "two thousand"
    end

    it "returns the string of ints devisable by 1000 up to 9000" do
      expect( convert(2000) ).to eq "two thousand"
      expect( convert(3000) ).to eq "three thousand"
      expect( convert(4000) ).to eq "four thousand"
      expect( convert(5000) ).to eq "five thousand"
      expect( convert(6000) ).to eq "six thousand"
      expect( convert(7000) ).to eq "seven thousand"
      expect( convert(8000) ).to eq "eight thousand"
      expect( convert(9000) ).to eq "nine thousand"

    end
    it "returns the string of ints devisable by 1000 up to 9999" do
      expect( convert(9999) ).to eq "nine thousand nine hundred and ninety nine"
    end
end
