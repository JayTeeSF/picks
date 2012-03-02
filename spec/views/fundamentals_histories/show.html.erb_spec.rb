require 'spec_helper'

describe "fundamentals_histories/show" do
  before(:each) do
    @fundamentals_history = assign(:fundamentals_history, stub_model(FundamentalsHistory,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
