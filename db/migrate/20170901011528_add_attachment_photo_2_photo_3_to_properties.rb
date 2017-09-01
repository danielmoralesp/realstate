class AddAttachmentPhoto2Photo3ToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :photo_2
      t.attachment :photo_3
    end
  end

  def self.down
    remove_attachment :properties, :photo_2
    remove_attachment :properties, :photo_3
  end
end
