class BookSearch

  def initialize(title)
    @title = title
  end

  def book_title
    book.title
  end

  def book
    service = BookService.new.get_book(@title)
      @book ||= Book.new(service)
  end
end
