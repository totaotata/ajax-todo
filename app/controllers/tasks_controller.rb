class TasksController < ApplicationController
  def index
  	@tasks = Task.order('id').reverse
  end

  def create
  	#Creation of the task
  	@task = Task.new(task_params)
		@task.status = false
		if (@task.save)
			#AJAX call, HTML Otherwise
  		respond_to do |format|
  			format.html do
					redirect_to tasks_path
				end
				format.js
			end
  	else
  		puts "The task has not been saved"
  	end
  end

  def edit
  	@task = Task.find(params['id'])
  end

  def update
  	@task = Task.find(params['id'])
  	new_status = !@task.status
  	@task.update(status: new_status)
  	respond_to do |format|
  		format.html {redirect_to tasks_path} 
  		format.js
  	end
  end

  private 

  def task_params
  	params.permit(:title)
  end 

end
