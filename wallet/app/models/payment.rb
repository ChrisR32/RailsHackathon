class Payment < ApplicationRecord
  belongs_to :user
  has_many :pay_expenses, dependent: :destroy
  has_many :expense_occurrences, through: :pay_expenses
end
