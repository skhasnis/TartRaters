class CreateTarts < ActiveRecord::Migration[5.2]
  def change
    create_table :tarts do |t|
      t.string :name

      t.timestamps
    end
  end
end
