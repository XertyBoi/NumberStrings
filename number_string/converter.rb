
def convert(num)
  units = ["","one","two","three","four","five","six","seven","eight","nine"]

    case num
    when 0
      ""
    when 10
      "ten"
    else
      units[num]
    end
end
