require 'spec_helper'

describe "fundamentals_histories/new" do
  before(:each) do
    assign(:fundamentals_history, stub_model(FundamentalsHistory,
      :company_id => 1,
      :pe => 1.5,
      :industry_pe => 1.5,
      :mkt_cap => 1.5,
      :avg_vol => 1.5,
      :last_dividend => 1.5,
      :bid => 1.5,
      :ask => 1.5,
      :fifty_two_wk_high => 1.5,
      :fifty_two_wk_low => 1.5
    ).as_new_record)
  end

  it "renders new fundamentals_history form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fundamentals_histories_path, :method => "post" do
      assert_select "input#fundamentals_history_company_id", :name => "fundamentals_history[company_id]"
      assert_select "input#fundamentals_history_pe", :name => "fundamentals_history[pe]"
      assert_select "input#fundamentals_history_industry_pe", :name => "fundamentals_history[industry_pe]"
      assert_select "input#fundamentals_history_mkt_cap", :name => "fundamentals_history[mkt_cap]"
      assert_select "input#fundamentals_history_avg_vol", :name => "fundamentals_history[avg_vol]"
      assert_select "input#fundamentals_history_last_dividend", :name => "fundamentals_history[last_dividend]"
      assert_select "input#fundamentals_history_bid", :name => "fundamentals_history[bid]"
      assert_select "input#fundamentals_history_ask", :name => "fundamentals_history[ask]"
      assert_select "input#fundamentals_history_fifty_two_wk_high", :name => "fundamentals_history[fifty_two_wk_high]"
      assert_select "input#fundamentals_history_fifty_two_wk_low", :name => "fundamentals_history[fifty_two_wk_low]"
    end
  end
end
