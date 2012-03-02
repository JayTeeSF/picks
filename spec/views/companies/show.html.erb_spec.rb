require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :symbol => "Symbol",
      :sector => "Sector",
      :industry => "Industry",
      :exchange => "Exchange",
      :profile => "MyText",
      :investment_blurb => "MyText",
      :big_dividends => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Symbol/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sector/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Industry/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Exchange/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
