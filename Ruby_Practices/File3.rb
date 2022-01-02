=begin
The task is: We will create a method which will take a number argument
 Check if the number is negative then print negative number
 Check if the number is equal to zero then print zero
 Check if the number is positive then check this number odd or even
=end
class Condition_statement
  puts "Please enter a number! "

  def condition
    a = gets.chop.to_i
  if (a < 0)
    puts "This is negative number."
  elsif (a == 0)
    puts "This is zero."
  elsif (a > 0 && a % 2 == 0)
    puts "This is positive and even number."
  else
    puts "This is odd number."
  end
  end
end

Condition_statement.new.condition