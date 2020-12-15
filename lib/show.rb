class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = @characters.sum do |character|
      character.salary
    end
    total
  end

  def highest_paid_actor
    high = 0
    winner = ''
    @characters.each do |character|
      if character.salary > high
        high = character.salary
        winner = character.actor
      end
    end
    winner
  end

  def actors
    actors = @characters.map do |character|
      character.actor
    end 
  end
end
