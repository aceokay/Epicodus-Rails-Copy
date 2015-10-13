require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit chapters_path
    click_on 'Add New Chapter'
    fill_in 'Title', :with => 'Rocks and Rolls'
    click_on 'Create Chapter'
    expect(page).to have_content 'Rocks and Rolls'
    click_on 'Add New Section'
    fill_in 'Title', :with => 'Rocks'
    click_on 'Create Section'
    expect(page).to have_content 'Rocks'
    click_on 'Rocks'
    click_on 'Add New Lesson'
    fill_in 'Title', :with => 'Rocks, Background information'
    fill_in 'Body', :with => 'Rocks of the Rocks and Rolls Bakery'
    fill_in 'Number', :with => '1'
    click_on 'Create Lesson'
    expect(page).to have_content 'Rocks, Background information'
  end
end
