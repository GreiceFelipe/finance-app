require 'rails_helper'

RSpec.describe StoreTransaction, type: :model do
  it { is_expected.to(validate_presence_of(:occurrence)) }
  it { is_expected.to(validate_presence_of(:value)) }
  it { is_expected.to(validate_presence_of(:cpf)) }
  it { is_expected.to(validate_presence_of(:card)) }
  it { is_expected.to(validate_presence_of(:time)) }
  it { is_expected.to(validate_presence_of(:store_owner)) }
  it { is_expected.to(validate_presence_of(:store_name)) }

  it { is_expected.to(belong_to(:financial_transaction)) }

  describe 'Validates' do
    let(:store_transaction) { create(:store_transaction) }

    context 'with valid factory' do
      it { expect(store_transaction).to(be_valid) }
    end
  end
end
