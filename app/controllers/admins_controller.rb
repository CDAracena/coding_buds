class AdminsController < ApplicationController

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

def admins_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:admin).permit(:f_name, :l_name, :date_of_birth)
  end
end
