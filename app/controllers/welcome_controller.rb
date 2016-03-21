class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.role?('developer')
      redirect_to projects_url
    else
      @projects = Project.all  
      @statuses = Task.statuses    
    end
  end
end
