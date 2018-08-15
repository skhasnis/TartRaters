class AddAttachmentTartImgToTarts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :tarts do |t|
      t.attachment :tart_img
    end
  end

  def self.down
    remove_attachment :tarts, :tart_img
  end
end
