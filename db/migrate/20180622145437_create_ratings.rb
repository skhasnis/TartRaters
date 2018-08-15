class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :taste
      t.integer :appearance
      t.integer :texture
      t.text :comment

      t.timestamps
    end
  end
end
