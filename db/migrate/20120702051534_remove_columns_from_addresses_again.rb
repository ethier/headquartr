class RemoveColumnsFromAddressesAgain < ActiveRecord::Migration
  def up
    remove_column :addresses, :iso3
    remove_column :addresses, :iso
  end

  def down
  end
end
