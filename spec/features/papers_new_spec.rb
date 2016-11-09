require 'spec_helper'

describe "New paper page", :type => :feature do

  it "should render" do
    visit new_paper_path
  end

  it 'should have input fields' do
    visit new_paper_path
    expect(page).to have_field("Titel")
  end

end