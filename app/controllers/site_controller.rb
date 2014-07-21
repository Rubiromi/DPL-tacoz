class SiteController < ApplicationController

  def index

  end

  def about

  end

  def contact

  end

  def contact_submit
    # MailerWorker.perform_async(params[:name], params[:email], params[:subject], params[:question])
    ContactMailer.delay.contact_request(params)
    redirect_to root_path, notice: 'Thanks for contacting us!'
  end

end
