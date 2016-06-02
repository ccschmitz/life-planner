class EulogiesController < ApplicationController
  def show
    @eulogy = current_user.eulogies.find(params[:id])
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

  def edit
    @eulogy = current_user.eulogies.find(params[:id])
  end

  def update
    @eulogy = current_user.eulogies.find(params[:id])

    if @eulogy.update_attributes(eulogy_params)
      flash[:success] = 'Eulogy updated successfully!'
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
