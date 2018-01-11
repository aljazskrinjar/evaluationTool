class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :student

  def value_to_text
    if value == 0
      return "RED"
    elsif value == 1
      return "YELLOW"
    elsif value == 2
      return "GREEN"
    else
      return ""
    end

  end
end
