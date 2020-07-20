require_relative "./author"

class Book
    @@all = []

    attr_accessor :book_name, :word_count

    def initialize(book_name, word_count)
        @book_name = book_name
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        Publisher.all.map do |pub|
            if(pub.book == self)
                pub.author
            end
        end.compact
    end

    def title
        @book_name
    end

    def word_count
        @word_count
    end

end