class DisplaysController < ApplicationController
  def show
    @category = "Food"
    @contents = Content.all
    @explanations = Explanation.all
    render layout: "display"
  end
end
