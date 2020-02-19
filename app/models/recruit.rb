class Recruit
  include ActiveModel::Model
  attr_accessor :company, #会社名
                :name, #名前
                :tel, #電話番号
                :email, #メールアドレス
                :address, #住所
                :business, #事業内容
                :start, #開始予定時期
                :period, #契約予定期間
                :period_select, #契約予定期間
                :remarks, #備考
                :option

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :business, {presence: true}
  validates :start, {presence: true}
  validates :period, {presence: true}
  validates :period_select, {presence: true}

  @@OptionLists = [
    ["リスト制作","リスト制作"],
    ["スクリプト構成","スクリプト構成"],
    ["ターゲット選定","ターゲット選定"],
    ["監視委託","監視委託"]
  ]

  def self.OptionLists
    @@OptionLists
  end
end
