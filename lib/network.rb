class Network
  attr_reader :name

  def initialize(name)
    @name = name
    @shows = []
  end

  def shows
    @shows
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    characters_folder = []
    @shows.each do |show|
      characters_folder << show.characters
    end

    new_list = characters_folder.flatten

    new_list.each do |character|
      if character.name == character.name.upcase
        main << character
      end
    end
    main
  end

  def actors_by_show
    test = @shows.reduce(Hash.new) do |memo, show|
      if memo[show]
        memo[show].push(show.actors)
      else
        memo[show] = show.actors
      end
      memo
    end
  end

end
