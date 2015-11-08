class DisplaysController < ApplicationController

  def show
    display = Display.where(category: params[:category]).first
    p params[:actual_slide]
    @selected_slide = display.last_content_id < Content.last.id ? Content.last.id : params[:actual_slide]
    @category = params[:category]
    @contents = Content.all.where(category: @category)
    @explanation = Explanation.all.where(category: @category).sample
    display.update(last_content_id: Content.last.id)
    render layout: "display"
  end

end
