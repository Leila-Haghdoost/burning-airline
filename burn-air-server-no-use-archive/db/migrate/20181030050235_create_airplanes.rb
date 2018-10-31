class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :name
      t.integer :rows
      t.text :columns
      t.text :id
      t.timestamps
    end
  end
end
