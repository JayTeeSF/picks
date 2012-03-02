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

      t.timestamps
    end
  end
end
