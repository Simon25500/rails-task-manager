class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to '/'
  end

  def new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to "/tasks/#{@task.id}"
  end

   def destroy
     @task = Task.find(params[:id])
     @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
     redirect_to '/'
  end

  private

  def task_params
    params.require(:tasks).permit(:title, :details)
  end
end
