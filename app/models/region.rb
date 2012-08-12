class Region < ActiveRecord::Base
  default_scope :order => 'abbr ASC'

  belongs_to :country

  validates :country, :name, :presence => true

  def self.find_all_by_name_or_abbr(name_or_abbr)
    where('name = ? OR abbr = ?', name_or_abbr, name_or_abbr)
  end

  def to_s
    name
  end
end
