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

    args1 = [9,19,99,999,999999,999999999,999999999999,999999999999999]
    args2 = [nil,nil,10,100,1000,1000000,1000000000,1000000000000]
    args3 = [nil,nil,nil," hundred", " thousand", " million", " billion", " trillion"]
    args4 = [false,false,false,true,true,true,true,true]
    args5 = [units,specials,tens,units,units,units,units,units]

    bounds_list = []

    #formula

    (0..7).each do |x|
      bounds_list << Bound.new(args1[x],args2[x],args3[x],args4[x],args5[x]) #units
    end

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

        prefix = "#{bound.array_to_select[whole_num]}#{bound.size_string}" + space(remainder)
        suffix = ""
        #problem : with double 'ands' eg 'one thousand and one hundred and four'
        #solution: only put 'and' if (num/bound divide) is less or equal to (bound max/bound div)

        #allows up to 999,000 ect after 10s value

        if (whole_num <= bound.max_bounds/bound.divide) && (bound.max_bounds > 99)
          prefix = "#{convert(whole_num)}#{bound.size_string}" + space(remainder)
        end
        if remainder != 0
          suffix = make_suffix(bound,remainder)
          suffix += convert(remainder)
        end

        return  prefix + suffix
      end

    end
end


def make_suffix(bound, remainder)
  if (bound.needs_and && remainder < 100)
    "and "
  else
    ""
  end
end

def space(remainder)
  if remainder > 0
    " "
  else
    ""
  end
end
