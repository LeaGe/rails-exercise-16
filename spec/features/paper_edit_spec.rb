require 'spec_helper'

describe "Edit Paper page", :type => :feature do

  it "should save changes" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    fill_in "paper_venue", with: "Mind 49"
    click_button "Save Paper"
    expect(Paper.find_by(year: 1950).venue). to eql("Mind 49")
  end

  it "should allow to select 5 authors from 5 separate drop downs" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    expect(page).to have_field("Author 1")
  end

  it "should pre-select the actual authors in the dropdowns" do
    create(:author)
    paper = create(:paper)
    visit edit_paper_path(paper)
    expect(page).to have_select("Author 1", selected: "Alan Turing")
  end

  it "should save changes to the author list" do
    create(:author)
    author2 = create(:author, first_name: "Peter", last_name: "Plagiarist")
    paper = create(:paper)
    visit edit_paper_path(paper)
    select "Peter Plagiarist", :from => "Author 1"
    click_button "Save Paper"
    expect(Paper.find_by(year: 1950).authors[0]).to eql(author2)
  end

end