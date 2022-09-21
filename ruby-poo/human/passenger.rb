require_relative '../human.rb'
require_relative '../passport.rb'

class Passenger < Human
    attr_accessor :nacionality
    include Passport

    def travel
    end

    def talk
        yield
    end

end

