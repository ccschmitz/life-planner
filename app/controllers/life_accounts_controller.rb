class LifeAccountsController < ApplicationController
  def show
    @life_account = current_user.life_accounts.find(params[:id])
  end

  def new
    @life_account = current_user.life_accounts.build
  end

  def create
    @life_account = current_user.life_accounts.build(life_account_params)

    if @life_account.save
      flash[:success] = 'Life account created successfully.'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @life_account = current_user.life_accounts.find(params[:id])
  end

  def update
    @life_account = current_user.life_accounts.find(params[:id])

    if @life_account.update(life_account_params)
      flash[:success] = 'Life account created successfully.'
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def life_account_params
    params
      .require(:life_account)
      .permit(
        :name, :purpose_statement, :envisioned_future, :current_reality
      )
  end
end
