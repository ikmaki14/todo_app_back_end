class TodoController < ApplicationController
    # list all todos
    def index
    end
    
    # display form to create new todo
    def new
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