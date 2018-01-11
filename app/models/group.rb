class Group < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
