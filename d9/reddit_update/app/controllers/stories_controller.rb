class StoriesController < ApplicationController
def index
	@stories = Story.all
end

def show
	@story = Story.find(params[:id])
end

def new
	@stories = Story.new
end

end


