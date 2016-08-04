require 'rails_helper'

RSpec.feature "Tool management" do
  scenario "User creates a new widget" do
    visit new_tool_path

    fill_in "Name", :with => "Screwdriver"
    click_button "Create Tool"

    within('#tool_info') do
      expect(page).to have_content("Screwdriver")
    end
  end
end
