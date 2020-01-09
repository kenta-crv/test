class ContactMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  default to: "info@ri-plus.jp"

  def received_email(contact)
    @contact = contact
    mail(subject: 'アポ匠よりメッセージが届きました') do |format|
      format.text
    end
  end

end
