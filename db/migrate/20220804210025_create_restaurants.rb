class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      # name
      t.string :name
      # city
      t.string :city
      # Timestamp
      t.timestamps
    end
  end
end
