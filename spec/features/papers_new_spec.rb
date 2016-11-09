require 'spec_helper'

describe "New paper page", :type => :feature do

  it "should render" do
    visit new_paper_path
  end
end