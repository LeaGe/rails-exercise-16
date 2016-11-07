require 'spec_helper'

describe "Authors page", :type => :feature do

  it 'should render' do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it 'should have input fields' do
    visit new_author_path
    expect(page).to have_field("authors_first_name")
  end
end