class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def main_characters
    main_actor_names = []
    @shows.each do |show|
      show.characters.select do |character|
        if character.name == character.name.upcase && character.salary > 500_000
          main_actor_names << character
        end
      end
    end
    main_actor_names
  end

  def actors_by_show
    { @shows => @characters.actors }
  end
end
