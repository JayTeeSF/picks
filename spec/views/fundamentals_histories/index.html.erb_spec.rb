require 'spec_helper'

describe "fundamentals_histories/index" do
  before(:each) do
    assign(:fundamentals_histories, [
      stub_model(FundamentalsHistory,
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
      ),
      stub_model(FundamentalsHistory,
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
      )
    ])
  end

  it "renders a list of fundamentals_histories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
