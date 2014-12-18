class SearchController < ApplicationController
	def search
		if params[:q].nil?
    @apis = []
  else
    @apis = Api.search params[:q]
  end
	end
end
