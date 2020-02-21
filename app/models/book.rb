class Book
  attr_reader :title, :author, :genre
  def initialize(data)
require "pry"; binding.pry
    @title = data["title"]
    @author = data["author"]
    @genre = data["genre"]
  end
end
