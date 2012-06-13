class LaundryType < ActiveRecord::Base
  belongs_to :listing
  attr_accessible :description, :name
end
