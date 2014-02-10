# coding: utf-8

require_relative '../spec_helper' 

feature 'gerenciar loja' do

  scenario 'incluir loja', :javascript => true do

    visit new_loja_path

    preencher_e_verificar_loja
 

  end

  scenario 'alterar loja' do #, :js => true do

    loja = FactoryGirl.create(:loja)

    visit edit_loja_path(loja)

    preencher_e_verificar_loja



  end

   scenario 'excluir loja' do #, :javascript => true do

       loja = FactoryGirl.create(:loja)

        visit lojas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_loja

      fill_in 'Nome', :with => "Casas Bahia"
      fill_in 'Descrição', :with => "loja do povo"
      fill_in 'Cnpj', :with => "1111111"
   
 
      click_button 'Salvar'

      page.should have_content 'Nome: Casas Bahia'
      page.should have_content 'Descrição: loja do povo'
      page.should have_content 'Cnpj:  1111111'
      


      

   end
end
