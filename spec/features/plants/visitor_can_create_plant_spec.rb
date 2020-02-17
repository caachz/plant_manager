require 'rails_helper'

RSpec.describe "A visitor can add a new plant to their home" do
  it "creates a new plant" do

    visit '/plants'

    expect(page).to have_link("Add Plant")

    click_link("Add Plant")

    expect(current_path).to eq("/plants/new")

    fill_in "Species", with: "Rubber Tree"

    click_on "Submit"

    expect(current_path).to eq("/plants")

    expect(page).to have_content("Rubber Tree")

  end
end
