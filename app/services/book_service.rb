class BookService

  def conn
    Faraday.new(url: 'http://openlibrary.org') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end 

  def get_book(title)
    response = conn.get("/search.json?title=#{title}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
