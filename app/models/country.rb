class Country < ActiveRecord::Base
  belongs_to :address
  attr_accessible :code, :name
end
