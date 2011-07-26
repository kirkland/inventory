class Product < ActiveRecord::Base
  has_attached_file :image

  CATEGORIES = ['Necklace', 'Bracelet', 'Earring', 'Ring', 'Hair Accessories']
end
