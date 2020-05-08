class PayExpense < ApplicationRecord
  belongs_to :payment
  belongs_to :expense_occurence
end
