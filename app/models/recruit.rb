class Recruit
  include ActiveModel::Model
  attr_accessor :name, :mobile, :email, :age, :station, :choice, :remarks

  validates :name, {presence: true}
  validates :mobile, {presence: true}
  validates :email, {presence: true}
  validates :age, {presence: true}
  validates :station, {presence: true}
  validates :choice, {presence: true}

end
