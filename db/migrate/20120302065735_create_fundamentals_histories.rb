class CreateFundamentalsHistories < ActiveRecord::Migration
  def change
    create_table :fundamentals_histories do |t|
      t.integer :company_id
      t.float :pe
      t.float :industry_pe
      t.float :mkt_cap
      t.float :avg_vol
      t.float :annualized_dividend
      t.float :dividend_yield
      t.float :bid
      t.float :ask
      t.float :fifty_two_wk_high
      t.float :fifty_two_wk_low
      t.date :collected_on

      t.timestamps
    end
    add_index :fundamentals_histories, :company_id
    add_index :fundamentals_histories, [:company_id, :collected_on], :unique => true
  end
end
