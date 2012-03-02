class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
    add_index :sectors, :name, :unique => true
  end
end
