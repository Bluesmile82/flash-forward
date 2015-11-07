class ContentsController < ApplicationController
  def new
    @category = params[:category]
    @content = Content.new

  end

  def create
    @content = Content.new(content_params)
    @content.save
    redirect_to thank_you_path
  end

  def index
  end

  private

  def content_params
     params.require(:content).permit(:comment, :category, :picture)
  end
end
