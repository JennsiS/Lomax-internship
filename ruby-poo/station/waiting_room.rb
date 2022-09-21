require_relative '../station.rb'

class WaitingRoom < Station
    attr_accessor :number_seats

    def plays_music
        puts "♪♫♪♬♫♪♩"
    end
end