class RecruitsController < ApplicationController
  layout "app"
  def index
    @recruit = Recruit.new
    render :action => 'index'
  end

  def confirm
    @recruit = Recruit.new(recruit_params)
    @recruit.option = params[:recruit][:option]
    if @recruit.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @recruit = Recruit.new(recruit_params)
    @recruit.option = params[:recruit][:option]
    RecruitMailer.received_email(@recruit, @recruit.option).deliver
  end

  private
  def recruit_params
    params.require(:recruit).permit(
                    :company, #会社名
                    :name, #名前
                    :tel, #電話番号
                    :email, #メールアドレス
                    :address, #住所
                    :business, #事業内容
                    :start, #開始予定時期
                    :period, #契約予定期間
                    :period_select, #契約予定期間
                    :option, #オプション希望
                    :remarks #備考
    )
  end
end
