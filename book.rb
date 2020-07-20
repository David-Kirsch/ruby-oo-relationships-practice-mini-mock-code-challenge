require_relative "./author"
class Book
    @@all = []

    attr_accessor :author, :book_name, :word_count

    def initialize(author, book_name, word_count)
        @author = author
        @book_name = book_name
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def title
        @book_name
    end

    def word_count
        @word_count
    end

end