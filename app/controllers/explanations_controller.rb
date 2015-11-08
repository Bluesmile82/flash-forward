class ExplanationsController < ApplicationController
  def new
  end

  def create
    @explanation = Explanation.new(explanation_params)
    @explanation.save
    redirect_to thank_you_path
  end

  def index
  end

  private

  def explanation_params
     params.require(:explanation).permit(:text, :category, :picture)
  end
end
