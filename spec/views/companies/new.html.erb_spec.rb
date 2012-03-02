require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :symbol => "MyString",
      :sector => "MyString",
      :industry => "MyString",
      :exchange => "MyString",
      :profile => "MyText",
      :investment_blurb => "MyText",
      :big_dividends => false
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_symbol", :name => "company[symbol]"
      assert_select "input#company_sector", :name => "company[sector]"
      assert_select "input#company_industry", :name => "company[industry]"
      assert_select "input#company_exchange", :name => "company[exchange]"
      assert_select "textarea#company_profile", :name => "company[profile]"
      assert_select "textarea#company_investment_blurb", :name => "company[investment_blurb]"
      assert_select "input#company_big_dividends", :name => "company[big_dividends]"
    end
  end
end
