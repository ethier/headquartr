class AddIsoColumnsToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :iso3, :string
    add_column :addresses, :iso, :string
  end
end
