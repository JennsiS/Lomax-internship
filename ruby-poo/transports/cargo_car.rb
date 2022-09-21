require_relative '../transport.rb'

class CargoCar < Transport
    attr_accessor :travel_time

    def max_luggage=(max_luggage)
        @max_luggage = max_luggage
    end
    
end