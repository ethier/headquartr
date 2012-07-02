class Country < ActiveRecord::Base
  attr_accessible :name, :iso3, :iso2, :numcode 

  has_many :regions, :order => "name ASC"

  validates :name, :iso2, :presence => true

  def to_s
    name
  end
end