require_relative '../human.rb'
require_relative '../passport.rb'

class Stewardess < Human
    include Passport

    def attend
    end

    def greeting
        puts "- Hi, my name is #{@name} i will be attending you today"
    end

end