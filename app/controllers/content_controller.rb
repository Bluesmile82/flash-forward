class ContentController < ApplicationController
  def new
    @category = params[:category]
  end

  def create
  end

  def index
  end

  private

  def content_params
     params.require(:content).permit(:comment, :category, :picture)
  end
end
