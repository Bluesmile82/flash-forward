class ContentsController < ApplicationController
  def new
    @category = params[:category]
    @content = Content.new

  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to thank_you_path
    else
      @alert = "Please upload a picture"
      render :new
    end
  end

  def index
  end

  private

  def content_params
     params.require(:content).permit(:comment, :category, :picture)
  end
end
