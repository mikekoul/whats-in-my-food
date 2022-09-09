require 'rails_helper'

RSpec.describe 'Food index' do
  it 'return searched food' do
    
    visit root_path

    fill_in :q, with: "sweet potatoes"
    click_button('Search')

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Food Results")
  end
end 