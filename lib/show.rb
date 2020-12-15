class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_amount = 0
    @characters.each do |character|
      total_amount += character.salary
    end
    total_amount
  end

  def highest_paid_actor
    @characters.find_all do |character|
      return character.actor if character.salary > 1_000_000
    end
  end
end
