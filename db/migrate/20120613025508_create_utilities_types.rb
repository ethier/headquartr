class CreateUtilitiesTypes < ActiveRecord::Migration
  def change
    create_table :utilities_types do |t|
      t.references :listing
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :utilities_types, :listing_id
  end
end
