class HomeController < ApplicationController
  def index
    if params["select_topic"]
      render_select_topic_page
    else
      render_home_page
    end
  end

  def render_home_page
    render file: "public/home.html.slim", layout: false
  end

  def render_select_topic_page
    render file: "public/select_topic.html.slim"
  end
end
