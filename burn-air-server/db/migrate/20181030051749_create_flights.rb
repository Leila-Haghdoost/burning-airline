class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :id
      t.text :origin
      t.text :destination
      t.date :date
      t.text :plane

      t.timestamps
    end
  end
end
