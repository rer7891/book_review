class Review
  attr_reader :publication_date, :summary
  def initialize(data)
    @publication_date = data[:publication_dt]
    @summary = data[:summary]
  end
end
