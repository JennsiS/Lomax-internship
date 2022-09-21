class Flight
    attr_accessor :destination
    attr_accessor :departure
    attr_accessor :status

    def show_info
        puts "-----------------------------------"
        puts "Departure: #{@departure}\n Destination: #{@destination}\n Status: #{@status}"
        puts "-----------------------------------"
    end

end