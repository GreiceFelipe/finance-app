class CreateStoreTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :store_transactions do |t|
      t.references :financial_transaction, null: false, foreign_key: true
      t.string :occurrence
      t.float :value
      t.string :cpf
      t.string :card
      t.string :time
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
