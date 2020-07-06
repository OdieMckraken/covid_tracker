class GlobalStatus
    
    attr_accessor :global_hash

    @@all = []

    def initialize (global_hash)
        @global_hash = global_hash
        @@all << self
    end

    def self.all
        @@all
    end

end
