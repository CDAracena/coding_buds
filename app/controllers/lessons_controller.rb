class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
end

def show

end

def new
  @lesson = Lesson.new

end

def create
  admin = current_admin
  # admin.id
  Lesson.create(lessons_params.merge({admin_id: admin.id}))

  redirect_to lessons_path

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
  # {name: '....', description: '...', syntax: '...'} + {admin_id: '...'} = {name: '....', description: '...', syntax: '...', admin_id: '...'}

    params.require(:lesson).permit(:name, :description, :syntax)
  end
end
