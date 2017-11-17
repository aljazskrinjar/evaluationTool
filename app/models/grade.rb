class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :student

  def value_to_text
    if value == 0
      return "RED"
    elsif value == 1
      return "YELLOW"
    else
      return "GREEN"
    end

  end
end
