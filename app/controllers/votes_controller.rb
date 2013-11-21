class VotesController < ApplicationController 

before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @task.votes.create(direction: params[:direction])
  	# redirect_to '/tasks'

  	render json: { id: @task.id, votes: @task.votes_total }
  end

end