class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flightnum
      t.date :date
      t.string :origin
      t.string :destination
      t.string :name


      t.timestamps
    end
  end
end
