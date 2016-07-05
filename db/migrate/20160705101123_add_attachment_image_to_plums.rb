class AddAttachmentImageToPlums < ActiveRecord::Migration
  def self.up
    change_table :plums do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :plums, :image
  end
end
