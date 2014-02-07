# coding: utf-8

require_relative '../spec_helper' 

feature 'gerenciar cliente' do

  scenario 'incluir cliente', :javascript => true do

    visit new_cliente_path

    preencher_e_verificar_cliente
 

  end

  scenario 'alterar cliente' do #, :js => true do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

   scenario 'excluir cliente' do #, :javascript => true do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_cliente

      fill_in 'Nome', :with => "Luiz"
      fill_in 'Data de Nascimento', :with => "01/09/1991"
      fill_in 'Email', :with => "viney_goes@hotmail.com"
   
 
      click_button 'Salvar'

      page.should have_content 'Nome: Luiz'
      page.should have_content 'Data de Nascimento: 01/09/1991'
      page.should have_content 'Email: viney_goes@hotmail.com'
      


      

   end
end
