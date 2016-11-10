require 'spec_helper'

describe "New paper page", :type => :feature do

  it "should render" do
    visit new_paper_path
  end

  it 'should have input fields' do
    visit new_paper_path
    expect(page).to have_field("Title")
    expect(page).to have_field("Venue")
    expect(page).to have_field("Year")
  end

  it "should have a submit button" do
    visit new_paper_path
    expect(page). to have_css("input[type='submit']")
  end

  it "should have title, venue and year" do
    visit new_paper_path
    fill_in "Title", with: "COMPUTING MACHINERY AND INTELLIGENCE"
    fill_in "Venue", with: "Mind 49: 433-460"
    fill_in "Year", with: "1950"
    click_button "Save Paper"
    expect(Paper.find_by(Year: "1950"))
  end
end