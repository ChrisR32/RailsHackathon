class Expense < ApplicationRecord
    belongs_to :user
    # validates :title, :description, :date_end, :date_start, :times, :recur, prescence: true
    has_many :expense_occurences
    has_one_attached :picture
end
