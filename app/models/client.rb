class Client
    attr_accessor :name, :trainer, :location

    @@all = []

    def initialize(name, trainer, location)
        @name = name
        @trainer = trainer
        @location = location
        @@all << self
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def assign_location(location)
        @location = location
    end

    def self.all 
        @@all
    end
end