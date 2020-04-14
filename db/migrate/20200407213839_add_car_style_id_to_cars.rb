class AddCarStyleIdToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :car_style, null: true, foreign_key: true
  end
end
