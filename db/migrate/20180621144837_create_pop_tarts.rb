class CreatePopTarts < ActiveRecord::Migration[5.2]
  def change
    create_table :pop_tarts do |t|
      t.string :name

      t.timestamps
    end
  end
end
