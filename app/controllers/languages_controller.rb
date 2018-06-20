class LanguagesController < ApplicationController
def index
  @languages = Language.all
end

def show

end

def new

  @language = Language.new

end

def create
  Language.create(languages_params)

  redirect_to languages_path
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
