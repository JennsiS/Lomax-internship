# Require all class files
Dir["./human/*.rb"].each {|file| require file }
Dir["./transports/*.rb"].each {|file| require file }
Dir["./station/*.rb"].each {|file| require file }
require_relative "./flight.rb"

puts "~ Welcome to the Airport, im going to show you some planes"

puts "*************************************************************************"
puts "Plane 1"
puts "*************************************************************************"

stewardess_1 = Stewardess.new
stewardess_1.name = "July"
stewardess_1.age = 22
stewardess_1.greeting

pilot_1 = Pilot.new
pilot_1.name = "Oscar"
pilot_1.years_experience = 10
pilot_1.airline_name = "American Airline"
pilot_1.welcome

passenger_1 = Passenger.new
passenger_1.name = "Pedro"
passenger_1.talk { puts "[Passenger talking] #{passenger_1.name}: I want to change my seat"}

puts "*************************************************************************"
puts "Plane 2"
puts "*************************************************************************"

pilot_2 = Pilot.new
pilot_2.name = "Fernando"
pilot_2.years_experience = 5
pilot_2.welcome


stewardess_2 = Stewardess.new
stewardess_2.name = "Andrea"
stewardess_2.greeting

passenger_2 = Passenger.new
passenger_2.name = "Baby"
passenger_2.talk { puts "#{passenger_2.name}: Crying"}


puts "*************************************************************************"
puts "Plane 3"
puts "*************************************************************************"

pilot_3 = Pilot.new
pilot_3.name = "Philipp"
pilot_3.years_experience = 20
pilot_3.welcome
pilot_3.set_legal_name("John Philipp Smith")

stewardess_3 = Stewardess.new
stewardess_3.name = "Valery"
stewardess_3.greeting

passenger_3 = Passenger.new
passenger_3.name = "Mario"
passenger_3.id_number = 100112212
passenger_3.talk { puts "[Passenger talking] #{passenger_3.name}: My passport id is #{passenger_3.id_number}"}


puts "\n~ We have some of the best planes. Here are some of the brands we have: "

plane_1 = Plane.new
plane_1.brand = "Airbus"
puts plane_1.brand

plane_2 = Plane.new
plane_2.brand = "Safran"
plane_2.type = "aerial"
puts plane_2.brand

plane_3 = Plane.new
plane_3.brand = "Thales"
plane_3.airline_name = "American Airlines"
puts plane_2.brand

puts "\n ~ We also have cargo cars like this one you see here "


car_1 = CargoCar.new
puts "This car has capacity for #{car_1.max_luggage=50} suitcases"

car_2 = CargoCar.new
car_2.travel_time = 5

car_3 = CargoCar.new
car_3.travel_time = 20
car_3.type = "land"

puts "\n~ The flights for today are:"

flight_1 = Flight.new
flight_1.destination = "New York"
flight_1.departure = "Miami"
flight_1.status = "On time"
flight_1.show_info

flight_2 = Flight.new
flight_2.status = "Canceled"
flight_2.show_info

flight_3 = Flight.new
flight_3.destination = "Guatemala"
flight_3.departure = "Miami"
flight_3.status = "Delay"
flight_3.show_info

puts "\n~ Here you can see the migration station"

migration_station = Migration.new
migration_station.inspectors = 5

guard_1 = SecurityGuard.new
guard_1.credential = 123
guard_1.talk

guard_2 = SecurityGuard.new
guard_2.credential = 456

guard_3 = SecurityGuard.new
guard_3.credential = 678
guard_3.talk { puts "[Security guard talking] Red code!!"}

puts "\n~ Here you can see the waiting room"
waiting_room = WaitingRoom.new
waiting_room.number_seats = 30
waiting_room.plays_music

puts "\n~ Goodbye! I hope we see you soon"

