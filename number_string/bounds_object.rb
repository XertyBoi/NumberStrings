class Bound

  attr_accessor :max_bounds,:divide,:size_string,:array_to_select

  def initialize(max,div,string,array)
    @max_bounds = max
    @divide = div
    @size_string = string
    @array_to_select = array
  end

end
