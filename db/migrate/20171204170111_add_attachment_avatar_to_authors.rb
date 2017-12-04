class AddAttachmentAvatarToAuthors < ActiveRecord::Migration
  def self.up
    change_table :authors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :authors, :avatar
  end
end

# rails g paperclip author avatar - generated this file
# since custom attachments Rails doesn't know how to automatically reverse
 # 'add_attachment' so use up & down methods

 # to tell Paperclip to update our existing images with the new style run:
  # rake paperclip:refresh:missing_styles
