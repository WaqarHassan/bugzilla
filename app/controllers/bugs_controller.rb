class BugsController < ApplicationController
  before_action :set_project 
  before_action :set_bug, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /projects
  # GET projects/1/bugs
  def index
    @bugs = @project.bugs
  end

  # GET projects/1/bugs/1
  def show
  end

  # GET projects/1/bugs/new
  def new
    @user_id= current_user.id
    @bug = @project.bugs.build
  end

  # GET projects/1/bugs/1/edit
  def edit
  end

  # POST projects/1/bugs
  def create
    @bug = @project.bugs.build(bug_params)

    if @bug.save
      redirect_to([@bug.project, @bug], notice: 'Bug was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT projects/1/bugs/1
  def update
    if @bug.update_attributes(bug_params)
      redirect_to([@bug.project, @bug], notice: 'Bug was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/bugs/1
  def destroy
    @bug.destroy

    redirect_to project_bugs_url(@project)
  end
  def resolve_bug
    bug = Bug.find_by_id(params[:bug_id])
    bug.status = "Resolved"
    bug.save!
    puts "-----------------------------------------------------------"
    redirect_to project_bugs_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_bug
      @bug = @project.bugs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bug_params
      params.require(:bug).permit(:user_id,:title, :bug_type, :status, :deadline, :description)
    end
end
