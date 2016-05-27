class CommitmentsController < ApplicationController
  def new
    @commitment = life_account.commitments.build
  end

  def create
    @commitment = life_account.commitments.new(commitment_params)

    if @commitment.save
      flash[:success] = 'Commitment saved.'
      redirect_to life_account
    else
      render :new
    end
  end

  def edit
    @commitment = life_account.commitments.find(params[:id])
  end

  def update
    @commitment = life_account.commitments.find(params[:id])

    if @commitment.update_attributes(commitment_params)
      flash[:success] = 'Commitment updated.'
      redirect_to life_account
    else
      render :new
    end
  end

  private

  def commitment_params
    params.require(:commitment).permit(:name, :due_at)
  end

  def life_account
    @life_account ||= current_user.life_accounts.includes(:commitments).find(params[:life_account_id])
  end
end
