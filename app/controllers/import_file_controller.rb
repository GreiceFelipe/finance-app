class ImportFileController < ApplicationController
    include Importable

    def index
        @store_transactions = StoreTransaction.all
    end

    def import
        impot_file
        redirect_to action: :index
    end
end
