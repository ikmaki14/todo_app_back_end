class TodoController < ApplicationController
    # list all todos
    def index
        @list=Todo.all
    end
    
    # display form to create new todo
    def new
    end
    
    def toggle
        t =Todo.find_by_id(params[:id])
        t.complete=!!params[:complete]
        t.save
        redirect_to "/todo/index"
    end
    
    def update
        t=Todo.find_by_id(params[:id])
        t.description=params[:description]
        t.pomodoro_estimate=params[:pomodoro_estimate]
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    
    def destroy
        t=Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
    
    # display form to edit existing todo
    def edit
       @todo=Todo.find_by_id(params[:id]) 
    end
    
    # save todo to database
    def create
        t=Todo.new
        t.description=params[:description]
        t.pomodoro_estimate=params[:pomodoro_estimate]
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
   
    # display specific todo 
    def show
        @todo=Todo.find_by_id(params[:id])
    end
end