class MailerWorker
  include Sidekiq::Worker

  def perform(params)
    params = {name: name, email: email, subject: subject, question: question}
    ContactMailer.contact_request(params).deliver
  end

end
