class AddCarclassIdToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :carclass, null: true, foreign_key: true
  end
end
