class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "100x100>" }
  #ensures that we get an image file when we expect one; this validator is required by default
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
