class Book
  attr_reader :title, :author, :genre
  def initialize(data)
    @title = data[:docs].first[:title_suggest]
    @author = data[:docs].first[:author_name]
    @genre = data[:docs][2][:subject]
  end
end
