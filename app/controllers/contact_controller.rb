class ContactController < ApplicationController
  layout "it"
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    @contact.skill = params[:contact][:skill]
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
    #binding.pry
  end

  def thanks
    @contact = Contact.new(contact_params)
    @contact.skill = params[:contact][:skill]
    ContactMailer.received_email(@contact, @contact.skill).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(
                    :company, #会社名
                    :name, #名前
                    :tel, #電話番号
                    :email, #メールアドレス
                    :address, #住所
                    :project, #プロジェクト名
                    :skill, #必要スキル選択
                    :skill_other, #必要スキルその他
                    :start, #開始予定時期
                    :period, #契約予定期間
                    :period_select, #
                    :remarks #備考
    )
  end
end
