require 'rails_helper'

RSpec.describe "As a user" do 
  describe "When I search for a certain atla character," do 
    it 'And click on a result, I see a show page with info' do
      VCR.use_cassette('atla_show') do

        visit root_path

        fill_in "character", with: "Appa"
        
        click_button "Search"
        
        click_link "Appa"

        expect(page).to have_content("Appa")  
        expect(page).to have_content("Enemies: Azula")  
      end 
    end
  end
end