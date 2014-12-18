class SearchController < ApplicationController
	def search
		if params[:q].nil?
    @libraries = []
  else
    @libraries = Library.search params[:q]
  end
	end
end
