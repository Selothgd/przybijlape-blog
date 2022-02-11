class Post < ApplicationRecord
	has_rich_text :body
	belongs_to :user, :optional => true
	has_attached_file :avatar, styles: { medium: "300x300>", small: "200x200>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :avatar, attachment_presence: true

  def isadmin?
      current_user.isadmin? 
  end
end
