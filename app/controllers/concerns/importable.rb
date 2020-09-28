require 'csv'

module Importable
    extend ActiveSupport::Concern

    def impot_file
        myfile = params[:file]
        CSV.foreach(myfile.path) do |row|
            line = row[0]
            financial_transaction_type = line[0]
            occurrence = line[1..8]
            occurrence = "#{occurrence[6..7]}/#{occurrence[4..5]}/#{occurrence[0..3]}"
            value = line[9..18].to_f/100
            cpf = line[19..29]
            card = line[30..41]
            time = line[42..47]
            time = "#{time[0..1]}:#{time[2..3]}:#{time[4..5]}"
            store_owner = line[48..61].strip
            store_name = line[62..80].strip

            financial_transaction = FinancialTransaction.find_by(transaction_type: financial_transaction_type)

            StoreTransaction.create(
                financial_transaction: financial_transaction,
                occurrence: occurrence,
                value: value,
                cpf: cpf,
                card: card,
                time: time,
                store_owner: store_owner,
                store_name: store_name
            )
        end
    end
end