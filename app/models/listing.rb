class Listing < ActiveRecord::Base
  belongs_to :user

  attr_accessible :active, :amount, :balcony_backyard, :basement, :cable, :description, :furnished, :housing_type_id, :internet, :laundry_type_id, :parking, :pet_type_id, :rooms, :separate_entrance, :term_type_id, :utiltities_type_id, :views

  has_many :term_types
  has_many :utilities_types
  has_many :housing_types
  has_many :laundry_types
  has_many :pet_types

  has_many :addresses, :as => :addressable
  has_many :images, :as => :imageable
  has_many :flags, :as => :flagable
end
