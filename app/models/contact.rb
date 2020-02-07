class Contact
  include ActiveModel::Model
  attr_accessor :company, :name, :tel, :email, :address, :project ,:skill, :start, :period, :remarks

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :project, {presence: true}
  validates :skill, {presence: true}
  validates :start, {presence: true}
  validates :period, {presence: true}
  validates :remarks, {presence: true}
end
