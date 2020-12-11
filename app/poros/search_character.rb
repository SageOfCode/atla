class SearchCharacter
  attr_reader :id, 
              :name, 
              :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end