class MailersController < ApplicationController
  def index
    @mailers = Mailer.all
  end

  def new
    @mailers = Mailer.all
  end

  def create
  end
  def destroy
    @mailer = Mailer.find(params[:id])
    @mailer.destroy
    redirect_to root_path
  end
end
