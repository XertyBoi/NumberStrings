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
      Bound.new(9,nil,nil,false,units), #units
      Bound.new(19,nil,nil,false,specials), #teens
      Bound.new(99,10,nil,false,tens), #tens
      Bound.new(999,100," hundred",true,units), #hundreds
      Bound.new(999999,1000," thousand",true,units), #thousands
      Bound.new(999999999,1000000," million",true,units), #millions
      Bound.new(999999999999,1000000000," billion",true,units), #billions
      Bound.new(999999999999999,1000000000000," trillion",true,units) #millions

    ]

    #if num < max bound then get from array (units + teens)

    bounds_list.each do |bound|

      if (num < 0)
        return "minus #{convert(num.abs)}"
      end

      if num <= bound.max_bounds
        return bound.array_to_select[num] if bound.divide.nil?

        #has divide value. Have to calculate
        whole_num = num/bound.divide
        remainder = num%bound.divide

        #100 example to help my brain: eg: 301 "units[3] hundred"

        prefix = "#{bound.array_to_select[whole_num]}#{bound.size_string}" + (remainder > 0 ? " " : "")
        suffix = ""
        #problem : with double 'ands' eg 'one thousand and one hundred and four'
        #solution: only put 'and' if (num/bound divide) is less or equal to (bound max/bound div)

        #allows up to 999,000 ect after 10s value

        if (whole_num <= bound.max_bounds/bound.divide) && (bound.max_bounds > 99)
          prefix = "#{convert(whole_num)}#{bound.size_string}" + (remainder > 0 ? " " : "")
        end
        if remainder != 0
          suffix = (bound.needs_and ? (remainder < 100 ? "and " : "") : "") + "#{convert(remainder)}"
        end

        return  prefix + suffix
      end

    end
end
