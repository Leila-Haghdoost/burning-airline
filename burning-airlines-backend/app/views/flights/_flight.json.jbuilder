json.extract! flight, :id, :flightnum, :date, :origin, :destination, :plane, :created_at, :updated_at
json.url flight_url(flight, format: :json)
