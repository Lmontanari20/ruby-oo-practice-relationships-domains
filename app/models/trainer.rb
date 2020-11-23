class Trainer 
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
        Client.all.select{|client| client.trainer == self}
    end
    
    def client_count
        self.clients.length
    end

    def self.most_clients
        @@all.max{|client| client.client_count}
    end
end