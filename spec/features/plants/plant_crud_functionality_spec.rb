require 'rails_helper'

RSpec.describe "A visitor can use all crud functionality on the plants DB" do
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

  it "updates a new plant" do
    plant = Plant.create!(species: "Pothos", name: "Least favorite plant")

    visit "/plants/#{plant.id}"

    click_link("Update Plant")

    expect(current_path).to eq("/plants/#{plant.id}/edit")

    fill_in "Species", with: "Rubber Tree"
    fill_in "Name", with: "My Fav Plant"
    fill_in "image", with: "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_rubber-tree_hover_mint_6430e356-673c-4af7-bdaf-3a002800dd1f_1024x1024.jpg?v=1578935840"

    click_on "Submit"
    
    expect(current_path).to eq("/plants/#{plant.id}")

    expect(page).to have_content("Rubber Tree")
    expect(page).to have_content("My Fav Plant")
  end
end
