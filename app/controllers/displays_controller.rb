class DisplaysController < ApplicationController

  def show
    display = Display.where(category: params[:category]).first
    @selected_slide = display.last_content_id < Content.last.id ? Content.last.id : params[:actual_slide]
    @category = params[:category]
    @contents = Content.all.where(category: @category)
    @explanations = Explanation.all.where(category: @category).shuffle
    display.update(last_content_id: Content.last.id)
    render layout: "display"
  end

end
