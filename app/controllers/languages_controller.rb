class LanguagesController < ApplicationController
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

def languages_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:language).permit(:name, :description)
  end
end
