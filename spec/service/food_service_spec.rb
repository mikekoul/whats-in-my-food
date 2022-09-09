require 'rails_helper'

RSpec.describe FoodService do
  describe '#class_methods' do
    it 'returns foods that contain an ingredient searched by keyword' do
      fs = FoodService.search('sweet potatoes')

      expect(fs).to be_a(Hash)
      expect(fs[:foods]).to be_a(Array)
      expect(fs[:totalHits]).to eq(49676)
      expect(fs[:foods].count).to eq(50)
    end
  end
end