class Bound

  attr_accessor :max_bounds,:divide,:size_string,:array_to_select,:needs_and

  def initialize(max,div,string,need_and,array)
    @max_bounds = max
    @divide = div
    @size_string = string
    @array_to_select = array
    @needs_and = need_and
  end

end
