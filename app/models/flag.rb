class Flag < ActiveRecord::Base
  attr_accessible :flag, :flagable_id, :flagable_type
end
