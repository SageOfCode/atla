class DisplayCharacter
  attr_reader :id, 
              :name, 
              :affiliation,
              :photo,
              :allies,
              :enemies,
              :gender,
              :weapon

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]
    @allies = data[:allies].join(", ")
    @enemies = data[:enemies].join(", ")
    @gender = data[:gender]
    @weapon = data[:weapon]
  end
end