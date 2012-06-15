class Address < ActiveRecord::Base
  attr_accessible :active, :addressable_id, :addressable_type, :appt_no, :city_id, :country_id, :intersection_one, :intersection_two, :latitude, :line_one, :line_three, :line_two, :longitude, :postal_zip_code, :region_id

  belongs_to :addressable, :polymorphic => true
end
