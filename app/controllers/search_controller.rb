class SearchController < ApplicationController
  def index
    render locals: {
      search_result: BookSearch.new(params[:title])
    }
  end
end
