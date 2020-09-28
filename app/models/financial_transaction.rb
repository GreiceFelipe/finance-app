class FinancialTransaction < ApplicationRecord
    validates :transaction_type, presence: true
    validates :description, presence: true
    validates :kind, presence: true
    validates :sign, presence: true

    enum kind: ['Entrada', 'Saída']
end
