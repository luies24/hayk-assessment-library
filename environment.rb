require 'pry'
class Book
    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end

class BookAuthor

end

class Author
    attr_reader :first_name, :last_name 

    @@all = []

    def initialize first_name, last_name
        @first_name = first_name
        @last_name = last_name
        @@all << self
    end

    def self.all
        @@all
    end

end

book1 = Book.new "Under the Dome"

author1 = Author.new "Stephen", "King"

binding.pry