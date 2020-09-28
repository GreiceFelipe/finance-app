require 'rails_helper'

describe "the import process", type: :feature do
    it 'has button to upload file ' do
        visit root_path
        expect(page).to have_content 'Importar'
    end
end