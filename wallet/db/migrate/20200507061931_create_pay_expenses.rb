class CreatePayExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :pay_expenses do |t|
      t.references :payment, foreign_key: true
      t.references :expense_occurence, foreign_key: true

      t.timestamps
    end
  end
end
