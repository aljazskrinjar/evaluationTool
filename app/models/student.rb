class Student < ApplicationRecord
  belongs_to:group
  has_many :grades, dependent: :destroy
  validates :name, presence: true
  validates :surname, presence: true
  validates :photo, presence: true
end
