class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar , default_url: ':style/default.png',
  styles: { thumb: "100x100>" }#paperclip method - tell it what attribute name we want to use to access the attached file
  #need supporting folder in images to match style names and put in a default pic
  validates_attachment_content_type :avatar,
  content_type: /\Aimage\/.*\z/
  #provided by Paperclip, and ensures that we get an image file when we expect one
  #then generate for avatar field
end


#rake paperclip:refresh:missing_styles so everyone gets same styles
