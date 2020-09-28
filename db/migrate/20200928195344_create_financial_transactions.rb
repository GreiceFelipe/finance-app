class CreateFinancialTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :financial_transactions do |t|
      t.integer :transaction_type
      t.string :description
      t.integer :kind
      t.string :sign

      t.timestamps
    end
  end
end
