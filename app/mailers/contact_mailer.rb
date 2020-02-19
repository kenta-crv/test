class ContactMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  default to: "info@ri-plus.jp"

  def received_email(contact, skill)
    @contact = contact
    @contact.skill = skill
    mail(subject: 'エンジランスよりメッセージが届きました') do |format|
      format.text
    end
  end

end
