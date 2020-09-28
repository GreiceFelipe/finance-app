FactoryBot.define do
  factory :store_transaction do
    financial_transaction { create(:financial_transaction) }
    occurrence { Date.today.strftime('%Y%m%d') }
    value { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    cpf { CPF.generate }
    card { '4753****3153' }
    time { Time.now.strftime('%H%M%S') }
    store_owner { Faker::Name.name }
    store_name { Faker::Company.name }
  end
end
