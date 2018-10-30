

Airplane.destroy_all
a1 = Airplane.create name:'Burning Airlines', row: 2, columns: 'A'
a2 = Airplane.create name:'Virgin Airlines', row: 3, columns: 'B'

puts "Created #{Airplane.all.length} airplanes."
puts Airplane.pluck(:name).join(', ')



Flight.destroy_all
f1 = Flight.create flight_number: 'A754', origin:'Paris', destination: 'Perth', date: '2018/05/09', plane_id: a1.id
f2 = Flight.create flight_number: 'B834', origin:'Dubai', destination: 'Gold Coast', date: '2018/07/12', plane_id: a1.id
f3 = Flight.create flight_number: 'A784', origin:'London', destination: 'Malaysia', date: '2018/05/09', plane_id: a2.id
f4 = Flight.create flight_number: 'B904', origin:'Dubai', destination: 'Singapore', date: '2018/03/05', plane_id: a2.id



puts "Created #{Flight.all.length} flights."
puts Flight.pluck(:flight_number).join(', ')


User.destroy_all

u1 = User.create name: 'Leila',  email: 'leila@ga.co', password: 'chicken'
u2 = User.create name: 'Brian', email: 'brian@ga.co', password: 'chicken'
u3 = User.create name: 'Tom', email: 'tom@ga.co', password: 'chicken'

puts "Created #{User.all.length} users."



Reservation.destroy_all

r1 = Reservation.create flight_id: 'A754', user_id: 'asd123'

puts "Created #{Reservation.all.length} reservations."
