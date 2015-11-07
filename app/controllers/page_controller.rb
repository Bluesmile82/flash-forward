class PageController < ApplicationController

  def home
    render file: "public/home.html.slim", layout: false
  end

  def select_topic
    render file: "public/select_topic.html.slim"
  end
end
