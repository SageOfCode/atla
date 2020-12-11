class AvatarService
  class << self 
    def get_results(search)
      response = conn.get("api/v1/characters?name=#{search}")
      parse_it_up(response)
    end

    def get_character(character_id)
      response = conn.get("/api/v1/characters/#{character_id}")
      parse_it_up(response)
    end

    private

    def conn
      Faraday.new("https://last-airbender-api.herokuapp.com")
    end

    def parse_it_up(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end