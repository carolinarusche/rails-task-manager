class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def details
    @task = Task.find(params[:id])
  end

  def new
    @taks = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to task_path(@task)
  end

  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
