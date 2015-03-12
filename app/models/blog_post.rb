class BlogPost < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode

	belongs_to :user
	has_many :comments

	validates :blog_entry, presence: true
	validates :blog_entry, length: {maximum: 1000, 
		too_long: "No one wants to read all that!!  Reduce your blog to 100 characters."}

	has_attached_file :image, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

 
end
