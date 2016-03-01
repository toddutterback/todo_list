class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @tod = Todo.new(todo_params)
    if @todo.save
      redirect_to todo_path
    else
      render :new
    end
  end

  
end
