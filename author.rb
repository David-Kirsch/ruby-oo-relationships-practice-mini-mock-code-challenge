class Author

    @@all = []
    attr_accessor :author
    def initialize(author)
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def book
    
        Publisher.all.map do |book|
           if(book.author == self)
            book.book
           end
        end.compact

    end

    def write_book(book)
        Publisher.new(self, book)
    end

    def total_words
        book.sum do |book|
            book.word_count
        end
    end

    def self.most_words
        self.all.max_by do |author|
            author.total_words
        end
    end
end