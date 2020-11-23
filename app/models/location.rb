class Location
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def clients 
        Client.all.select{|client| client.location == self}
    end
    
    def client_count
        self.clients.length
    end

    def self.least_clients
        self.all.min{|location| location.client_count}
    end
end