class ReviewService

  def get_reviews(title)
    key = ENV['NY_API_KEY']
    response = conn.get("/svc/books/v3/reviews.json?api-key=#{key}&title=#{title}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'http://api.nytimes.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
