class Expense < ApplicationRecord
    belongs_to :user
    has_many :expense_occurences, dependent: :destroy
    enum recur: {once: 0, daily: 1, weekly: 7, fortnightly: 14, monthly: 28, quarterly: 90, biannual: 182, annual: 365} 
    

end
