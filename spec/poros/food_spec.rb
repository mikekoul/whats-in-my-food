require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'has attributes' do
    data = {
      'gtinUpc': "8901020020844",
      'description': "SWEET POTATOES",
      'brandOwner': "NOT A BRANDED ITEM",
      'ingredients': "ORGANIC SWEET POTATOES."
    }

    food = Food.new(data)

    expect(food.code).to eq("8901020020844") 
    expect(food.description).to eq("SWEET POTATOES") 
    expect(food.owners).to eq("NOT A BRANDED ITEM") 
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.") 
  end
end