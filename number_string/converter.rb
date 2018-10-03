
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
    when (num > 19)
      if (num == 21)
      "twenty one"
    else
      tens[num/10]
    end
    else
      ""
    end
end
