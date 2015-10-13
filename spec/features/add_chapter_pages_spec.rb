require 'rails_helper'

describe "the add a chapter process" do
  it "adds a new chapter" do
    visit chapters_path
    click_on 'Add New Chapter'
    fill_in 'Title', :with => 'Rocks and Rolls'
    click_on 'Create Chapter'
    expect(page).to have_content 'Rocks and Rolls'
  end

  # it "gives error when no name is entered" do
  #   visit new_list_path
  #   click_on 'Create List'
  #   expect(page).to have_content 'errors'
  # end
end
