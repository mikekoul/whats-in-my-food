require 'rails_helper'

RSpec.describe 'Food index' do
  it 'return searched food' do
    
    visit root_path

    fill_in :q, with: "cheddar cheese"
    click_button('Search')

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Food Results")
    expect(page).to have_content("Number of Results: 10")

    within "#foods0" do
      expect(page).to have_content("GTIN/UPC: 041497083411")
      expect(page).to have_content("Description: CHEDDAR CHEESE")
      expect(page).to have_content("Brand Owners: Weis Markets, Inc.")
      expect(page).to have_content("PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR).")
    end
  end
end 