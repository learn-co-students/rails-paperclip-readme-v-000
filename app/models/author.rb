class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png',
   styles: { thumb: "100x100>" }

  #We have to place an image named default.png in our
  #app\assets\images\thumb and app\assets\images\original folders 
  #(already provided), that part doesn't 
  #automatically happen via Paperclip (Image)Magick.
  validates_attachment_content_type :avatar, 
  content_type: /\Aimage\/.*\Z/
end