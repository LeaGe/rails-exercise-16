require 'spec_helper'

describe "Edit Paper page", :type => :feature do

  it "should save changes" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    #fill_in "author_last_name", with: "Mathison"
    #click_button "Save Author"
    #expect(Author.find_by(first_name: "Alan").last_name). to eql("Mathison")
  end

end