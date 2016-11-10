require 'spec_helper'

describe "New paper page", :type => :feature do

  it "should render" do
    visit new_paper_path
  end

  it 'should have input fields' do
    visit new_paper_path
    expect(page).to have_field("paper_title")
    expect(page).to have_field("paper_venue")
    expect(page).to have_field("paper_year")
  end

  it "should have a submit button" do
    visit new_paper_path
    expect(page). to have_css("input[type='submit']")
  end

  it "should have title, venue and year" do
    visit new_paper_path
    fill_in "paper_title", with: "COMPUTING MACHINERY AND INTELLIGENCE"
    fill_in "paper_venue", with: "Mind 49: 433-460"
    fill_in "paper_year", with: 1950
    click_button "Save Paper"
    expect(Paper.find_by(Year: 1950))
  end
end