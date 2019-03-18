class SearchController < ApplicationController
  def index
    render locals: {
      facade: MemberSearchResultFacade.new(state: params[:state])
    }
  end
end
