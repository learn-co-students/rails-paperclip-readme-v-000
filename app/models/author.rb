class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "10x10>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
