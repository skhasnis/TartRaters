class AddTartIdToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :tart_id, :integer
  end
end
