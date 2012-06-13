class CreateLaundryTypes < ActiveRecord::Migration
  def change
    create_table :laundry_types do |t|
      t.references :listing
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :laundry_types, :listing_id
  end
end
