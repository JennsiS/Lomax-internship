require_relative '../transport.rb'
require_relative '../airline.rb'

class Plane < Transport
    attr_accessor :color
    attr_accessor :brand

    include Airline

    def fly
    end

    def land
    end

end