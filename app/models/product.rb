class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => '300x300' }

  CATEGORIES = ['Necklace', 'Bracelet', 'Earring', 'Ring', 'Hair Accessories']
end
