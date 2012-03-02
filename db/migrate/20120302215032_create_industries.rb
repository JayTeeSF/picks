class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.integer :sector_id
      t.text :comment

      t.timestamps
    end
    add_index :industries, :name, :unique => true
  end
end
