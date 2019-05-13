class ContactMailer < ActionMailer::Base
  default from: "smart@smart-document.jp"
  default to: "smart@smart-document.jp"
  
  def received_email(contact)
    @contact = contact
    mail(subject: 'webサイトよりメッセージが届きました') do |format|
      format.text
    end
  end

end