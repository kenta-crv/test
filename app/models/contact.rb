class Contact
  include ActiveModel::Model
  attr_accessor :company, #会社名
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

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :skill, {presence: true}
  validates :start, {presence: true}
  validates :period, {presence: true}
  validates :period_select, {presence: true}

  @@SkillLists = [
    ["HTML","HTML"],
    ["CSS","CSS"],
    ["javascript","javascript"],
    ["jQuery","jQuery"],
    ["Ruby on Rails","Ruby on Rails"],
    ["PHP","PHP"],
    ["MySQL","MySQL"],
    ["JAVA","JAVA"],
    ["Swift","Swift"],
    ["Python","Python"]
  ]

  def self.SkillLists
    @@SkillLists
  end
end
