require 'spec_helper'

describe "New Author page", :type => :feature do

  it 'should render' do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it 'should have input fields' do
    visit new_author_path
    expect(page).to have_field("author_first_name")
  end

  it 'should save the author' do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_last_name", with: "Turing"
    fill_in "author_homepage", with: "'http://wikipedia.org/Alan_Turing"
    click_button "Save Author"
    expect(Author.find_by(first_name: "Alan", last_name: "Turing"))
  end

  it 'should show validation errors' do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_homepage", with: "'http://wikipedia.org/Alan_Turing"
    click_button "Save Author"
    expect(page).to have_text("Last name can't be blank")
  end

end