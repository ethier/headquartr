class RenameAddressLines < ActiveRecord::Migration
  def up
    rename_column :addresses, :line_one, :address_one
    rename_column :addresses, :line_two, :address_two
    rename_column :addresses, :line_three, :address_three
  end

  def down
    rename_column :addresses, :address_one, :line_one
    rename_column :addresses, :address_two, :line_two
    rename_column :addresses, :address_three, :line_three
  end
end
