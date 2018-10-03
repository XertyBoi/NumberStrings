
def convert(num)
  units = ["","one","two","three","four","five","six","seven","eight","nine"]

    case num
    when 0
      ""
    else
      units[num]
    end
end
