class Author < ActiveRecord::Base
  has_many :posts
  # has an avatar
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "100x100>" }
  # validates that it is an image
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
