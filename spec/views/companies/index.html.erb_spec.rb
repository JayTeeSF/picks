require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :symbol => "Symbol",
        :sector => "Sector",
        :industry => "Industry",
        :exchange => "Exchange",
        :profile => "MyText",
        :investment_blurb => "MyText",
        :big_dividends => false
      ),
      stub_model(Company,
        :name => "Name",
        :symbol => "Symbol",
        :sector => "Sector",
        :industry => "Industry",
        :exchange => "Exchange",
        :profile => "MyText",
        :investment_blurb => "MyText",
        :big_dividends => false
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sector".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Exchange".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
