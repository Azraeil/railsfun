class AddAttachmentCoverToItems < ActiveRecord::Migration[5.2]
  def self.up
    change_table :items do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :items, :cover
  end
end
