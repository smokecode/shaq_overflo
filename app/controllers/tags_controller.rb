class TagsController < ApplicationController
  def index
    @tags = Tag.all
    if searched? 
      @tags = Tag.search(params[:search])
    else
      @tags = Tag.all
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
