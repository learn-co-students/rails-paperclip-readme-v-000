class Author < ActiveRecord::Base
  has_many :posts
  # adding default -- have to place an image named 'default.png' inside
    # app/assets/images/thumb and app/assets/images/original folders
  has_attached_file :avatar, default_url: ':style/default.png',
  # addings styles ensures that each image loaded has the same dimistions
  style: { thumb: '100x100>' }

  # provided via paperclip gem, ensures recieve an image file
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
