class AddNumcodeToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :numcode, :integer
  end
end
