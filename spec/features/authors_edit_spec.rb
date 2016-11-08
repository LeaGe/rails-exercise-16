require 'spec_helper'

describe "Edit Author page", :type => :feature do

  it "should render" do
    create(:author)
    visit edit_author_path
  end

end