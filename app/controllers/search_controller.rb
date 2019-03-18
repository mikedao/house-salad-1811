class SearchController < ApplicationController
  def index
    render locals: {
      facade: MemberSearchResultFacade.new
    }
  end
end
