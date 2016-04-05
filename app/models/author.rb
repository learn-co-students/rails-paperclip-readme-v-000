class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "50x50#" }, default_style: :thumb
  #validates_attachment_content_type :avatar, content_type: /\Aimage.*\Z/
end
