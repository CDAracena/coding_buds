class LanguagesController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token, only: [:destroy]
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
  @language = Language.find(params[:id])


end

def update
  language = Language.find(params[:id])

  language.update(languages_params)

  redirect_to languages_path
end

def destroy
  Language.destroy(params[:id])
  redirect_to languages_path
end

private

def languages_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:language).permit(:name, :description)
  end
end
