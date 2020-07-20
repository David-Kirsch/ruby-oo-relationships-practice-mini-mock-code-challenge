require_relative "./author"

class Book
    @@all = []

    attr_accessor :title, :word_count

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def all_authors_by_book
        Publisher.all.select do |publish|
            publish.book == self
        end
    end

    def authors
       all_authors_by_book.map do |book|
        book.author
       end
    end
end