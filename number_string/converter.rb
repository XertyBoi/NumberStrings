
def convert(num)
  units = ["","one","two","three","four","five","six","seven","eight","nine"]
  specials = {
     10 => "ten",
     11 => "eleven",
     12 => "twelve",
     13 => "thirteen",
     14 => "fourteen",
     15 => "fifthteen",
     16 => "sixteen",
     17 => "seventeen",
     18 => "eighteen",
     19 => "nineteen"
  }
    case num
    when 0
      ""
    when 10
      "ten"
    when 11
      "eleven"
    else
      units[num]
    end
end
