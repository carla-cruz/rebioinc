class HomeStatementsController < ApplicationController

  def index
    @hs = HomeStatement.all
  end

  def new
    @hs = HomeStatement.new
  end

  def create
    @hs = HomeStatement.create!(hs_params)
    redirect_to admin_path
  end

  def edit
    @hs = HomeStatement.find(params[:id])
  end

  def update
    @hs = HomeStatement.find(params[:id])
    @hs.update_attributes(hs_params)
    redirect_to admin_path
  end

  def destroy
    @hs = HomeStatement.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def hs_params
    params.require(:home_statement).permit(:phrase)
  end

end 