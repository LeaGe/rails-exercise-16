require 'spec_helper'

describe "Edit Author page", :type => :feature do

  it "should render" do
    author = create(:author)
    visit edit_author_path(author)
  end

  it "should render" do
    author = create(:author)
    visit edit_author_path(author)
    fill_in "author_last_name", with: "Mathison"
    click_button "Submit"
    expect(Author.find_by(first_name: "Alan").last_name). to eql("Mathison")
  end

end