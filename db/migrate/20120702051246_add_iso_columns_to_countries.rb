class AddIsoColumnsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :iso3, :string
    add_column :countries, :iso, :string
  end
end
