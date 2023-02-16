require 'rails_helper'

RSpec.describe 'merchants' do
  
  it 'shows a list of merchants' do
    visit merchants_path

    expect(page).to have_content('Merchants')
    expect(page).to have_content('Klein, Rempel and Jones')
  end
  it 'I can be taken to a merchant show page and list their items' do
    visit merchants_path

    click_on "Klein, Rempel and Jones"

    expect(current_path).to eq('/merchants/2')

    expect(page).to have_content('Klein, Rempel and Jones')

    expect(page).to have_content('Item Laudantium Ex')
  end
end