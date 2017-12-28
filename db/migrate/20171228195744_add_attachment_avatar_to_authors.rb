class AddAttachmentAvatarToAuthors < ActiveRecord::Migration
  # Paperclip provides two new methods for use in migrations: add_attachment and remove_attachment.
  # Because these are custom attachment methods, Rails won't know how to automatically reverse
  # an add_attachment migration, so you need up and down methods in the migration rather than
  # simply using change
  def self.up
    change_table :authors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :authors, :avatar
  end
end
