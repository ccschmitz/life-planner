class EulogiesController < ApplicationController
  def index
    @eulogies = current_user.eulogies
  end

  def new
    @eulogy = current_user.eulogies.build
  end

  def create
    @eulogy = current_user.eulogies.build(eulogy_params)

    if @eulogy.save
      flash[:success] = 'Eulogy created successfully!'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def eulogy_params
    params.require(:eulogy).permit(:name, :description)
  end
end
