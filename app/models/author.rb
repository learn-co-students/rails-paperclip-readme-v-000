class Author < ActiveRecord::Base
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :posts
end
