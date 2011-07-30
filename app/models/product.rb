class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => '300x300' },
                            :storage => :s3,
                            :s3_credentials => S3_CREDENTIALS,
                            :bucket => S3_BUCKET,
                            :path => "images/:id.:extension"

  CATEGORIES = ['Necklace', 'Bracelet', 'Earring', 'Ring', 'Hair Accessories']
end
