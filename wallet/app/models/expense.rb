class Expense < ApplicationRecord
    belongs_to :user
    has_many :expense_occurences, dependent: :destroy
    enum recur: {once: 0, daily: 1, weekly: 7, fortnightly: 14, monthly: 28, quarterly: 90, biannual: 182, annual: 365} 

    # validates :title, :description, :date_end, :date_start, :times, :recur, prescence: true
    has_many :expense_occurences
    has_one_attached :picture
end
