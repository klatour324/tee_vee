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
end
