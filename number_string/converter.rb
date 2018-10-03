
def convert(num)
  units = ["","one","two","three","four","five","six","seven","eight","nine"]
  tens = ["","ten","twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]
  specials = {
     10 => "ten",
     11 => "eleven",
     12 => "twelve",
     13 => "thirteen",
     14 => "fourteen",
     15 => "fithteen",
     16 => "sixteen",
     17 => "seventeen",
     18 => "eighteen",
     19 => "nineteen"
  }
    case
    when (num < 10)
      units[num]
    when (num < 20)
      specials[num]
    when (num < 100)
      tens_int = num/10
      remainder = num%10
      output = (remainder == 0) ? tens[tens_int]:tens[tens_int] + " " + convert(remainder)
    when (num < 1000)
      output = (num%100 == 0) ? "#{units[num/100]} hundred" : "#{units[num/100]} hundred and #{convert(num%100)}"
    else
      ""
    end
end
