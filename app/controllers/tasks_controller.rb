class TasksController < ApplicationController

before_action :authenticate_user!

	def index
	  @tasks = Task.all
	end

	def new 
	  @task = Task.new
	end

	def create 

	  @task = Task.create(params[:task].permit(:title, :description, :owner))	
	
	  if @task.save
	  	redirect_to @task
	  else
	  	render 'new'
	  end
	end

	def show
	  @task = Task.find(params[:id])	
	end

	def edit
	  @task = Task.find(params[:id])
	end

	def update

		@task = Task.find(params[:id])

		if @task.update(params[:task].permit(:title, :description, :owner))
	    redirect_to @task
	  else
	    render 'edit'
	  end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

end