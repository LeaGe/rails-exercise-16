require 'spec_helper'

describe "Edit Author page", :type => :feature do

  it "should render" do
    author = create(:author)
    visit edit_author_path(author)
  end

end