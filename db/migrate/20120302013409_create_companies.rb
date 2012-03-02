class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :symbol
      t.string :exchange
      t.string :profile
      t.string :investment_blurb

      t.timestamps
    end
  end
end
