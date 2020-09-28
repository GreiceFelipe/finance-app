class StoreTransaction < ApplicationRecord
  belongs_to :financial_transaction

  validates :occurrence, presence: true
  validates :value, presence: true
  validates :cpf, presence: true
  validates :card, presence: true, length: { is: 12 }
  validates :time, presence: true
  validates :store_owner, presence: true
  validates :store_name, presence: true

  validate :cpf_number

  def cpf_number
    CPF.valid?(self.cpf)
  end

end
