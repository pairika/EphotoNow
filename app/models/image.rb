class Image < ActiveRecord::Base
  
  belongs_to :user
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },   
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => "ephotonowapp"
  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  


end
