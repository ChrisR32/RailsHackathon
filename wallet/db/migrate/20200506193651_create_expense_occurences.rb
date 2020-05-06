class CreateExpenseOccurences < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_occurences do |t|
      t.references :expense, foreign_key: true
      t.date :date
      t.text :notes
      t.integer :amount
      t.boolean :debit

      t.timestamps
    end
  end
end
