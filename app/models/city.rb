class City < ActiveRecord::Base
  belongs_to :region
  belongs_to :address
  attr_accessible :name
end
