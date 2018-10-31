

Airplane.destroy_all
a1 = Airplane.create name:'Burning Airlines', rows: 2, columns: 'A'
a2 = Airplane.create name:'Virgin Airlines', rows: 3, columns: 'B'

puts "Created #{Airplane.all.length} airplanes."
puts Airplane.pluck(:name).join(', ')



Flight.destroy_all
f1 = Flight.create id: '754', origin:'Paris', destination: 'Perth', date: '2018/05/09'
f2 = Flight.create id: '834', origin:'Dubai', destination: 'Gold Coast', date: '2018/07/12'
f3 = Flight.create id: '784', origin:'London', destination: 'Malaysia', date: '2018/05/09'
f4 = Flight.create id: '904', origin:'Dubai', destination: 'Singapore', date: '2018/03/05'



puts "Created #{Flight.all.length} flights."
puts Flight.pluck(:flight_id).join(', ')

# u1 and u2 admins
User.destroy_all

u1 = User.create id: '123', name: 'Leila',  email: 'leila@ga.co', password: 'chicken'
u2 = User.create id: '654', name: 'Brian', email: 'brian@ga.co', password: 'chicken'
u3 = User.create id: '987', name: 'Tom', email: 'tom@ga.co', password: 'chicken'
u3 = User.create id: '345', name: 'Tom', email: 'tom@ga.co', password: 'chicken'

puts "Created #{User.all.length} users."



Reservation.destroy_all

r1 = Reservation.create flight_id: '754', user_id: '123'
r2 = Reservation.create flight_id: '834', user_id: '654'
r3 = Reservation.create flight_id: '784', user_id: '987'
r4 = Reservation.create flight_id: '904', user_id: '345'

puts "Created #{Reservation.all.length} reservations."

u1.flights << f1
u2.flights << f2
u3.flights << f3


u1.reservations << r1 << r4
u2.reservations << r2
u3.reservations << r3

a1.flights << f1
a2.flights << f2
# u1 and u2 admins
