class Region < ActiveRecord::Base
  belongs_to :country
  belongs_to :address
  attr_accessible :name
end
