class TargetsController < ApplicationController
  def index
  end

  def new
    @target = Target.new
  end
  
  def create
    @target = Target.new(target_params)
    if @target.save
      
    else
      render 'new'
    end
  end

  def edit
    @target = Target.find(params[:id])
  end
  
  def show
    @target = Target.find(params[:id])
  end
  
  private
  
    def target_params
      params.require(:target).permit(:target, :task, :deadline, :kpi)
    end
  
end
