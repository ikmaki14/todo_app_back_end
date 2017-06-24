class TodoController < ApplicationController
    def index
    end
    def show
        todo_id = params[:id]
        
        if todo_id == '1'
            @pomodoro_estimate=4
            @pomodoro_description="Make the curriculum"
        elsif todo_id == '2'
            @pomodoro_estimate=3
            @pomodoro_description="Buy workshop supplies"
        elsif todo_id == '3'
            @pomodoro_estimate=2
            @pomodoro_description="Meet with volunteer trainers"
        elsif todo_id == '4'
            @pomodoro_estimate=1
            @pomodoro_description="Order food for Saturday and Sunday"
        elsif todo_id == '5'
            @pomodoro_estimate=2
            @pomodoro_description="Check pre-work assignments"
        elsif todo_id == '6'
            @pomodoro_estimate=1
            @pomodoro_description="Send workshop location to all students"
        elsif todo_id == '7'
            @pomodoro_estimate=0
            @pomodoro_description="Have a great workshop"
        end
    end
end