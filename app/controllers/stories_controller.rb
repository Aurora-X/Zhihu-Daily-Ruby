require 'net/http'
require 'json'

class StoriesController < ApplicationController

	def index
		@stories = retrieve
	end

	def show
		@story = Story.find( params[:id] )
	end

	protected def retrieve
		uri = URI('http://news-at.zhihu.com/api/4/news/latest')
		res = Net::HTTP.get(uri)
		json_resp = JSON.parse(res)
		@stories = json_resp["stories"].to_a
	end

end
