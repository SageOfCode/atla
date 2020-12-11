require 'rails_helper'

describe AvatarService do
  context "class methods" do
    context ".get_results" do
      it "returns results" do
        VCR.use_cassette('result_service') do
          search = AvatarService.get_results("Appa")
          expect(search).to be_a Array
          member_data = search.first

          expect(member_data).to have_key :name
          expect(member_data[:name]).to be_a(String)

          expect(member_data).to have_key :_id
          expect(member_data[:_id]).to be_a(String)

          expect(member_data).to have_key :affiliation
          expect(member_data[:affiliation]).to be_a(String)
        end 
      end
    end
  end
end