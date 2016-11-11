require 'spec_helper'

describe "Edit Paper page", :type => :feature do

  it "should save changes" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    fill_in "paper_venue", with: "Mind 49"
    click_button "Save Paper"
    expect(Paper.find_by(year: 1950).venue). to eql("Mind 49")
  end

end