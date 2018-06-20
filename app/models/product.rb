class Product < ApplicationRecord
  acts_as_list
  has_many :images
  accepts_nested_attributes_for :images
end
