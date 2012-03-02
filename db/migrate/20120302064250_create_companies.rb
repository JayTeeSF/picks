class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :symbol
      t.string :sector
      t.string :industry
      t.string :exchange
      t.text :profile
      t.text :investment_blurb
      t.boolean :big_dividends

      t.timestamps
    end
    add_index :companies, :symbol, :unique => true
  end
end
