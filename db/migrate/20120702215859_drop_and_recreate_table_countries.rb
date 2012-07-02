class DropAndRecreateTableCountries < ActiveRecord::Migration
  def up
    drop_table :countries

    create_table :countries do |t|
      t.column :name, :string, :size => 100 
      t.column :iso2, :string, :size => 2
      t.column :iso3, :string, :size => 3
      t.column :numcode, :integer
    end
  end
end
