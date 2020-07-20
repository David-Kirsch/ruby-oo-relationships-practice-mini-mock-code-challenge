require 'pry'
require_relative './book'
require_relative './author'
require_relative './publisher'


david = Author.new("David")
roy = Author.new("Roy")
jordan = Author.new("Jordan")

book1 = Book.new("Two Tails", 574)
book2 = Book.new("My Story", 722)
book3 = Book.new("Around The World", 381)
book4 = Book.new("A New York Moment", 410)

published1 = Publisher.new(david, book1)
published2 = Publisher.new(david, book4)
published3 = Publisher.new(roy, book4)
published4 = Publisher.new(jordan, book2)


binding.pry

0


