class PetType < ActiveRecord::Base
  belongs_to :listing
  attr_accessible :description, :name
end
