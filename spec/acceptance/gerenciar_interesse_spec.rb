require 'spec_helper'

feature 'gerenciar preferencium' do

  scenario 'incluir preferencium' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente, :nome => "YYY")
    produto = FactoryGirl.create(:produto, :nome => 'XXX')

    visit new_preferencium_path

    preencher_e_verificar_preferencium
   

  end

  scenario 'alterar preferencium' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente, :nome => "YYY")
    produto = FactoryGirl.create(:produto, :nome => 'XXX')

    preferencium = FactoryGirl.create(:preferencium,:cliente => cliente,:produto => produto)

    visit  edit_preferencium_path(preferencium)

    preencher_e_verificar_preferencium


  end

  scenario 'excluir preferencium' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente, :nome => "YYY")
    produto = FactoryGirl.create(:produto, :nome => 'XXX')

    preferencium = FactoryGirl.create(:preferencium,:cliente => cliente,:produto => produto)

    visit preferencia_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_preferencium

    select 'YYY', :from => 'Cliente'
    select 'XXX', :from => 'Produto'

    click_button 'Salvar'
    
    page.should have_content 'Cliente: YYY'
    page.should have_content 'Produto: XXX'
    
    
  end

      

end
