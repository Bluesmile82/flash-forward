class DisplaysController < ApplicationController

  CATEGORIES = {
    food: "food",
    pet: "pet",
    party: "farty",
    family: "family"
  }

  def show
    display = Display.where(category: params[:category]).first
    @selected_content = display.last_content_id < Content.last.id ? Content.last.id : @actual_content
    @category = params[:category]
    @contents = Content.all.where(category: @category)
    @explanations = Explanation.all.where(category: @category).shuffle
    display.update(last_content_id: Content.last.id)
    render layout: "display"
  end

end
