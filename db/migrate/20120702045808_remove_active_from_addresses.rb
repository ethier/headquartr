class RemoveActiveFromAddresses < ActiveRecord::Migration
  def up
    remove_column :addresses, :active
  end

  def down
    add_column :addresses, :active
  end
end
