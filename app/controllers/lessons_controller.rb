class LessonsController < ApplicationController
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

def lessons_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:lesson).permit(:name, :description, :syntax, :admin_id)
  end
end
