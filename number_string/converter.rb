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

    bounds_list = [
      Bound.new(10,nil,nil,false,units), #units
      Bound.new(20,nil,nil,false,specials), #teens
      Bound.new(100,10,nil,false,tens), #tens
      Bound.new(1000,100," hundred",true,units) #hundreds
    ]

    #if num < max bound then get from array (units + teens)

    bounds_list.each do |bound|

      if num < bound.max_bounds
        return bound.array_to_select[num] if bound.divide.nil?

        #has divide value. Have to calculate
        whole_num = num/bound.divide
        remainder = num%bound.divide

        #100 example to help my brain: eg: 301 "units[3] hundred" +
        prefix = "#{bound.array_to_select[whole_num]}#{bound.size_string}"
        suffix = (remainder == 0 ? "" : (bound.needs_and ? " and" : "") + " #{convert(remainder)}")
        return  prefix + suffix
      end

    end

    case
    when (num >= 1000)
      output = (num%1000 == 0) ? "#{units[num/1000]} thousand" : "#{units[num/1000]} thousand" +  ((num%1000 < 100) ? " and " : " ")  + "#{convert(num%1000)}"
    else
      ""
    end
end
