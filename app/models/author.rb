class Author < ActiveRecord::Base
  has_many :posts
  has_attached_file :avatar, default_url: ':style/default.png', styles: { thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  private
    def author_params
      params.require(:author).permit(:bio, :name, :avatar)
    end
end
