class AddAttachmentAvatarToAuthors < ActiveRecord::Migration[5.0]
  def self.up
    change_table :authors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :authors, :avatar
  end
end
