class Publisher
    @@all = []
    attr_accessor :author, :book
    def initialize(author, book)
        @author = author
        @book = book
        @@all << self
    end

    def self.all
        @@all
    end
    
end