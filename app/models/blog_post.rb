class BlogPost < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	has_attached_file :image, :styles => { :medium => "300x300>", :thumg => "100x100>" }, :default_url => /\Aimage\/.*\Z/

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

end
