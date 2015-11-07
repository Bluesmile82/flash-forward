class DisplaysController < ApplicationController
  def show
    @category = "Food"
    @contents = Content.all
    @explanations = Explanation.all.shuffle
    render layout: "display"
  end
end
