FactoryBot.define do
  factory :financial_transaction do
    transaction_type { 1 }
    description { 'Débito' }
    kind { 'Entrada' }
    sign { '+' }
  end
end
