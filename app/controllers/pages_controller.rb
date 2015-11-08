class PagesController < ApplicationController

  def home
    render file: "public/home.html.slim"
  end

  def select_topic
    render file: "public/select_topic.html.slim"
  end

  def thank_you
    render file: "public/thank_you.html.slim"
  end
end
