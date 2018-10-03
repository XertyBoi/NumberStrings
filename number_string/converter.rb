
def convert(num)
  units = ["","one","two","three","four","five","six","seven","eight","nine"]
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
    when (num == 0)
      ""
    when (num > 9 && num < 20)
      specials[num]
    when (num > 19)
      "twenty"
    else
      units[num]
    end
end
