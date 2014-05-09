class Garden < ActiveRecord::Base
  has_many :users

  has_attached_file :photo, :styles => { :medium => "300x300#", :thumb => "200x200#" }, :default_url => "/images/:style/succulent.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
