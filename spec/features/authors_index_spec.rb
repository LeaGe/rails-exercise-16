require "spec_helper"

describe "Author index page", :type => :feature do

  it "should render" do
    visit authors_path
  end

  it "should list name and hompage of all authors" do
    create(:author)
    visit authors_path
    expect(page).to have_text("Alan Turing")
  end

  it "should link to the new author page" do
    visit authors_path
    expect(page).to have_css("a", text:"Add author")
  end

  it "should link to author page" do
    create(:author)
    visit authors_path
    expect(page).to have_css("a", text:"Show")
  end

  it "should link to edit author page" do
    create(:author)
    visit authors_path
    expect(page).to have_css("a", text:"Edit")
  end
end