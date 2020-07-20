class Author

    @@all = []

    def initialize(author)
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def book
        Book.all.select do |book|
            book.author == self
        end
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
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