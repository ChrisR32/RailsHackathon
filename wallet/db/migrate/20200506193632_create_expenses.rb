class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :recur
      t.integer :times
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
