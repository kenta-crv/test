class RecruitMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  default to: "info@ri-plus.jp"

  def received_email(recruit, option)
    @recruit = recruit
    @recruit.option = option
    mail(subject: 'アポエージェンシーより申込みが届きました') do |format|
      format.text
    end
  end

end
