class FaqsController < ApplicationController

  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.create!(faq_params)
    redirect_to admin_path
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
    @faq = Faq.find(params[:id])
    @faq.update_attributes(faq_params)
    redirect_to root_path
  end

  def destroy
    @category = Faq.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end

end 