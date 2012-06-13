class CreateTermTypes < ActiveRecord::Migration
  def change
    create_table :term_types do |t|
      t.references :listing
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :term_types, :listing_id
  end
end
