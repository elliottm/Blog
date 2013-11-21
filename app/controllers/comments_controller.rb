class CommentsController < ApplicationController

before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])	
    @comment = @task.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to task_path(@task)
  end

end