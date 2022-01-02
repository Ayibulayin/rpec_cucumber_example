
class Alma

  def display_data
    puts "This is first method without argument."
    a = 100
    b = 200
    c = a + b
    puts " the value of c -- #{c}"
  end

  def multiply_numbers(a, b)

    c = a * b
    puts c

  end
end
obj = Alma.new
obj.display_data
obj.multiply_numbers(10, 50)

