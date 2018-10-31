class RemovePlaneFromFlights < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :plane
  end
end
