class ContactController < ApplicationController
  layout "app"
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(
    :company, #会社名
    :name,  #代表者名
    :tel, #電話番号
    :address, #住所
    :email, #メールアドレス
    :project , #企画タイトル
    :skill, #必要スキル
    :start, #開始時期
    :period, #必要期間
    :remarks #プロジェクト詳細
    )
  end
end
