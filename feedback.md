Overall Assessment: 2/5 

Additional Comments: 

Good job getting the initialize methods correct for all of the classes. That is one of the hardest parts to get down. 

I'm not sure why the author is being passed an author in the initialize. Seems that should be `name` based on your `console.rb`. 

You create duplicate reader methods for the book's title. Decide if you're going to use an attr or if you're going to create a custom method such as the `title` method that you have written. You should not have two reader methods for the same attribute.

The `book.author` method should be changed to `book.authors` to indicate that a book now has many authors. Additionally, the code written in that method will return all of the publisher instances that are associated with that book. You want it to return the authors who are associated with the book

Your `author.book` method should be `author.books` since an author has many books. I would also like to see you use some more advanced techniques (such as helper methods and `.map` and `.select` enumerables). Take a look back at Friday's lecture to see how I set up these types of methods in class. 

Updated Assessment: 3/5

Additional Comments: 

Much better job overall. Make sure you're not just writing the correct solutions just because they're correct. Make sure you're understanding them