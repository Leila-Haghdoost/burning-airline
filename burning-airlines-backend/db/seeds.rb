# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plane.destroy_all
a1 = Plane.create name: "Burning Airlines", columns: 6, rows: 8
a2 = Plane.create name: "Virgin Airlines", columns: 8, rows: 30
a3 = Plane.create name: "Mahan Airlines", columns: 10, rows: 60

puts "Created #{Plane.all.length} airplanes."
puts Plane.pluck(:name).join(', ')



Flight.destroy_all
f1 = Flight.create flightnum: "A001", date: "2018/01/06", origin:'Paris', destination: "Spain", plane_id: a1.id
f2 = Flight.create flightnum: "B002", date: "2018/01/07", origin:'Dubai', destination: "Italy", plane_id: a2.id
f3 = Flight.create flightnum: "C003", date: "2018/01/08", origin:'London', destination: "Brazil", plane_id: a1.id
f4 = Flight.create flightnum: "D004", date: "2018/01/09", origin:'Dubai', destination: "New Zealand", plane_id: a3.id
f5 = Flight.create flightnum: "E005", date: "2018/01/10", origin:'Singapore', destination: "France", plane_id: a3.id

puts "Created #{Flight.all.length} flights."
puts Flight.pluck(:flightnum).join(', ')




User.destroy_all
u1 = User.create name: 'Leila',  email: 'leila@ga.co', password: 'chicken', admin: false
u2 = User.create name: 'Brian', email: 'brian@ga.co', password: 'chicken', admin: false
u3 = User.create name: 'Tom', email: 'tom@ga.co', password: 'chicken', admin: true
u4 = User.create name: 'Mika', email: 'mika@ga.co', password: 'chicken', admin: false
puts "Created #{User.all.length} users."





Reservation.destroy_all
r1 = Reservation.create user_id: u1.id, row: 1, column: 3, flight_id: f1.id
r2 = Reservation.create user_id: u1.id, row: 2, column: 3, flight_id: f2.id
r3 = Reservation.create user_id: u2.id, row: 3, column: 3, flight_id: f3.id
r4 = Reservation.create user_id: u2.id, row: 4, column: 3, flight_id: f4.id
r5 = Reservation.create user_id: u4.id, row: 5, column: 4, flight_id: f5.id

puts "Created #{Reservation.all.length} reservations."


# a1.flights << f1 << f5
# a2.flights << f2
# a3.flights << f3 << f4

#
# u1.reservations << r1 << r4
# u2.reservations << r2
# u3.reservations << r3
