class BookSearch

  def initialize(title)
    @title = title
  end

  def book_title
    book.title
  end

  def book_author
    book.author.first
  end

  def book_genre
    book.genre
  end

  def book
    service = BookService.new.get_book(@title)
      @book ||= Book.new(service)
  end

  def reviews
    service = ReviewService.new.get_reviews(@title)
    @reviews ||= service[:results].map do |data|
      Review.new(data)
    end 
  end
end
