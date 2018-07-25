class InvestsController < ApplicationController
  def create
    @invest = Invest.new

    @invest.user_id = params[:user_id]

    @invest.value = Marketasset.find(params[:invest][:marketasset_id]).value

    @invest.marketasset_id = params[:invest][:marketasset_id]

    @invest.investment = params[:invest][:investment]

    @invest.save!

    redirect_to users_path
  end

end
