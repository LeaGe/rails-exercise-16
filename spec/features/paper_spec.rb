require 'spec_helper'

describe "Paper page", :type => :feature do

  it "should display paper details" do
    paper = create(:paper)
    visit paper_path(paper)
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
  end

  it "should list the authors" do
    paper = create(:paper)
    visit paper_path(paper)
    expect(page).to have_text("Alan Turing")
  end
end