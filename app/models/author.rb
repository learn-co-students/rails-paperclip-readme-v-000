class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png', styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :avatar,
  content_type: { content_type: ["image/jpeg", "image/jpg", "image/gif", "image/png"] }
end
