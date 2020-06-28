class Zoo
  attr_reader :location
  attr_accessor :name
  @@all = []
  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end


  def animal_species
    animals.map do |animal|
      animal.species
  end

  def find_by_species(species)
    if species == species
      animals.species
    end
  end.uniq

  def animal_nicknames
    animals.map do |animal_instances|
      animal_instances.nickname
    end
  end

end
