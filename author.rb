class Author

    @@all = []
    attr_accessor :name
    def initialize(name)
        @name= name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_books_by_self
        Publisher.all.select do |publish|
            publish.author == self
        end
    end

    def books
      all_books_by_self.map do |book|
        book.book
      end
    end

    def write_book(book)
        Publisher.new(self, book)
    end

    def total_words
        books.sum do |book|
            book.word_count
        end
    end

    def self.most_words
        self.all.max_by do |author|
            author.total_words
        end
    end
end