class AvatarFacade
  class << self
    def character_search(search)
      json = AvatarService.get_results(search)
      json.map do |character|
        SearchCharacter.new(character)
      end
    end

    def character_data(character_id)
      json = AvatarService.get_character(character_id)
      DisplayCharacter.new(json)
    end
  end
end