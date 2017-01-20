class EntriesController < ApplicationController
	before_action :set_feed, only: :index
	before_action :setLayout

	def index
		@entries = @feed.entries.order('published desc')
	end

	def show
		@entry = Entry.find(params[:id])
	end

	private
	def set_feed
		@feed = Feed.find(params[:id])
	end
	def setLayout
		render :layout => "clean"
	end
end
