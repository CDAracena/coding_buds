class CommentsController < ApplicationController
  def index

end

def show

end

def new

end

def create

end

def edit

end

def update

end

def destroy

end

private

def comments_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:comment).permit(:description, :lesson_id)
  end

end
