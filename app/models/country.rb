class Country < ActiveRecord::Base
  has_many :regions, :order => "name ASC"

  validates :name, :iso_name, :presence => true

  def to_s
    name
  end
end