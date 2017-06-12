# require gems
require 'sqlite3'

# create database
db = SQLite3::Database.new("books.db")
db.results_as_hash = true


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    rating INTEGER
    )
SQL

# create books table
db.execute(create_table_cmd)

# TEST CODE
#db.execute("INSERT INTO books (title, author, rating) VALUES ('The Shining', 'Stephen King', 10)")


# Allow the user to make a list of books they want to read. They can add the author, title, and their own rating from 1-10.
# Print their data in a pretty way.

def add_book(db, title, author, rating)
  db.execute("INSERT INTO books (title, author, rating) VALUES (?, ?, ?)", [title, author, rating])
end

# def add_author(db, author)
#   db.execute("INSERT INTO books (author) VALUES (?)", [author])
# end

# def add_rating(db, rating)
#   db.execute("INSERT INTO books (rating) VALUES (?)", [rating])
# end

books_to_add = ''
until books_to_add == "no"

puts "Welcome to the Book List-o-Maker! You will make a list of books you've read. Let's get started! What is the title of a book you've read?"

title = gets.chomp


puts "Great! Who's the author?"

author = gets.chomp

puts "Awesome. Did you like it? You can type a number from 1 - 10, 1 if it was terrible and 10 if it was amazing."

rating = gets.chomp

add_book(db, title, author, rating)

puts "Great! More books to add? Type yes or no"

books_to_add = gets.chomp

end

books = db.execute("SELECT * FROM books")
books.each do |book|
  puts "You gave #{book['title']} written by #{book['author']} a whopping #{book['rating']} stars!"
end
