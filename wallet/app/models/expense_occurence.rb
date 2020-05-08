class ExpenseOccurence < ApplicationRecord
  belongs_to :expense
  has_many :pay_expenses, dependent: :destroy
  has_many :payments, :through :pay_expenses
end
