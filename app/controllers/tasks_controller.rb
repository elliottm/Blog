class TasksController < ApplicationController

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

end