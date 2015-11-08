class DisplaysController < ApplicationController

  CATEGORIES = {
    food: "food",
    pet: "pet",
    party: "farty",
    family: "family"
  }
  def show
    @category = params[:category]
    @contents = Content.all.where(category: @category)
    @explanations = Explanation.all.shuffle
    render layout: "display"
  end
end
