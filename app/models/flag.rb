class Flag < ActiveRecord::Base
  attr_accessible :flag, :flagable_id, :flagable_type

  belongs_to :flagable, :polymorphic => true
end
