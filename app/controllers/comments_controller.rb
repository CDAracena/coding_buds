class CommentsController < ApplicationController
  def index
      @comments = Comments.all.order(:created_at)
    end
    
    def new
        @comment = Comment.new
    end
    
    def show
         @comment = Comment.find(params[:id])
    end
    
    def create
        Comment.create(comment_params)
        flash[:success]='You have successfully created comment'
        redirect_to comments_path
    end
    
    def edit
        
        @comment = Comment.find(params[:id])
        
    end
    
    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
         flash[:success]='You have successfully updated comment'
        redirect_to comments_path
    end
    
    def destroy
        Comment.destroy(params[:id])
         flash[:error]='Your Comment is deleted'
         render json: {message: 'comment is destroyed!'}
#        redirect_to comments_path 
    end

private

def comments_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:comment).permit(:description, :lesson_id)
  end

end
