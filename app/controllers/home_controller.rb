class HomeController < ApplicationController
  def index
      @languages=Language.all.order(:created_at)
      @lessons = Lesson.all.order(:created_at)
      @comments = Comment.all.order(:created_at)
  end
end
