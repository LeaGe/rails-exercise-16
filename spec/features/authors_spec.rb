require 'spec_helper'

describe "Authors page", :type => :feature do

  it 'should render' do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it 'should save the author' do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_last_name", with: "Turing"
    fill_in "author_homepage", with: "'http://wikipedia.org/Alan_Turing"
    click_button "Save Author"
    expect(Author.find_by(first_name: "Alan", last_name: "Turing"))
  end
  #it 'should have input fields' do
    #visit new_author_path
    #expect(page).to have_field("authors_first_name")
  #end

end