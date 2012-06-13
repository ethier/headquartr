class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.integer :flagable_id
      t.string :flagable_type
      t.string :flag

      t.timestamps
    end
  end
end
