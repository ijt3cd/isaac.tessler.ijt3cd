class StoriesController < ApplicationController
def index
	@stories = Story.all
end

def new
	@story = Story.new
end

def show
	@story = Story.find(params[:id])
end

def create
	@story = Story.new(params["story"].permit(:title, :body, :url, :user_id, :category_id))
	@story.save

	redirect_to '/stories'
end


end