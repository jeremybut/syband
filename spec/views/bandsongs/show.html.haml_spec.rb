require 'spec_helper'

describe "bandsongs/show" do
  before(:each) do
    @bandsong = assign(:bandsong, stub_model(Bandsong,
      :band => nil,
      :song => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
