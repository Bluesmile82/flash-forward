class HomeController < ApplicationController
  def index
    p params["select_topic"]
    if params["select_topic"]
      render file: "public/select_topic.html.slim"
    else
      render file: "public/home.html.slim", layout: false
    end
  end
end
