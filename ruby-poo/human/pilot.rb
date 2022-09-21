require_relative '../human.rb'
require_relative '../passport.rb'
require_relative '../airline.rb'

class Pilot < Human
    include Passport
    include Airline

    attr_accessor :license
    attr_accessor :years_experience

    def drive
    end

    def welcome
        puts "+ Hello, my name is #{@name}, i will be your pilot today. For your peace of mind, I have been flying for  #{@years_experience} years."
    end

end