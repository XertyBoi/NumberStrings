require_relative "bounds_object"

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

    bounds_list = [Bound.new(10,nil,nil,units),Bound.new(20,nil,nil,specials)]

    bounds_list.each do |bound|
      return bound.array_to_select[num] if num < bound.max_bounds
    end

    case
    when (num < 100)
      tens_int = num/10
      remainder = num%10
      output = (remainder == 0) ? tens[tens_int] : tens[tens_int] + " " + convert(remainder)
    when (num < 1000)
      output = (num%100 == 0) ? "#{units[num/100]} hundred" : "#{units[num/100]} hundred and #{convert(num%100)}"
    when (num >= 1000)
      output = (num%1000 == 0) ? "#{units[num/1000]} thousand" : "#{units[num/1000]} thousand" +  ((num%1000 < 100) ? " and " : " ")  + "#{convert(num%1000)}"
    else
      ""
    end
end
