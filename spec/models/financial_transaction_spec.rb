require 'rails_helper'

RSpec.describe FinancialTransaction, type: :model do
  it { is_expected.to(validate_presence_of(:transaction_type)) }
  it { is_expected.to(validate_presence_of(:description)) }
  it { is_expected.to(validate_presence_of(:kind)) }
  it { is_expected.to(validate_presence_of(:sign)) }

  describe 'Validates' do
    let(:financial_transaction) { create(:financial_transaction) }

    context 'with valid factory' do
      it { expect(financial_transaction).to(be_valid) }
    end
  end
end
