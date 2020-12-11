require 'rails_helper'

RSpec.describe "As a user" do 
  describe "When I search for a certain atla character," do 
    it 'And click "Search", I see results' do
      VCR.use_cassette('atla_search') do

        visit root_path

        fill_in "character", with: "Appa"
        
        click_button "Search"
       
        expect(current_path).to eq(search_path)

        expect(page).to have_content("Appa")  
      end 
    end
  end
end