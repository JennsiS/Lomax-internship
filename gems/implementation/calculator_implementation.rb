#Lomax training
#Jennifer Sandoval
# Implementation of the gem calculator

# Require the Gem created
require "calculator"

# Method to validate the inputs are numbers
def validate_number
    number = gets.chomp
    is_number = Float(number) rescue false
    while !is_number
        puts "Not valid number. Enter a new number:"
        number = gets.chomp
        is_number = Float(number) rescue false
    end
    number = Float(number)
end

# Create an instance of the calculator class from the imported Gem
calculator = Calculator.new

option = 0
while option !="6"

    puts "\nSelect the option you want to use from calculator"
    puts "1. Addition"
    puts "2. Substraction"
    puts "3. Multiplication"
    puts "4. Division"
    puts "5. Module"
    puts "6. Exit"

    option = gets.chomp

    unless option == "6"
        puts "Enter the first number"
        n1 = validate_number()
        puts "Enter the second number"
        n2 = validate_number()
    end 

    case option
    when "1"
        puts "#{n1} + #{n2} = #{calculator.addition(n1,n2)}"
    when "2"
        puts "#{n1} - #{n2} = #{calculator.substraction(n1,n2)}"
    when "3"
        puts "#{n1} * #{n2} = #{calculator.multiplication(n1,n2)}"
    when "4"
        puts "#{n1} / #{n2} = #{calculator.divide(n1,n2)}"
    when "5"
        puts "#{n1} % #{n2} = #{calculator.module_operation(n1,n2)}"
    when "6"
        puts "Goodbye"
    else 
        puts "Invalid option"
    end

end