class AddAttachmentAvatarToAuthors < ActiveRecord::Migration
  def up
   add_attachment :authors, :avatar
  end

  def down
   remove_attachment :authors, :avatar
  end
end
