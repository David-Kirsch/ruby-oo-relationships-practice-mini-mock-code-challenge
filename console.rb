require 'pry'
require_relative './book'
require_relative './author'


david = Author.new("David")
roy = Author.new("Roy")
jordan = Author.new("Jordan")

book1 = Book.new(david, "Two Tails", 274)
book2 = Book.new(david, "My Story", 722)
book3 = Book.new(roy, "Around The World", 381)
book4 = Book.new(jordan, "A New York Moment", 410)

binding.pry

0


