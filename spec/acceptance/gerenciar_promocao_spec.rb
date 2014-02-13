# coding: utf-8

require_relative '../spec_helper' 

feature 'gerenciar promocao' do

  scenario 'incluir promocao', :javascript => true do

    visit new_promocao_path

    preencher_e_verificar_promocao
 

  end

  scenario 'alterar promocao' do #, :js => true do

    promocao = FactoryGirl.create(:promocao)

    visit edit_promocao_path(promocao)

    preencher_e_verificar_promocao



  end

   scenario 'excluir promocao' do #, :javascript => true do

       promocao = FactoryGirl.create(:promocao)

        visit promocaos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_promocao

      fill_in 'Nome', :with => "liquidação"
      fill_in 'Data inicio', :with => "09-01-1991"
      fill_in 'Data fim', :with => "12-02-2004"
      fill_in 'Porcentagem' , :with => "0.2"
 
      click_button 'Salvar'

      page.should have_content 'Nome: '
      page.should have_content 'Data inicio:  1991-01-09'
      page.should have_content 'Data fim: 2004-02-12 '
      page.should have_content 'Porcentagem:  0.2'


      

   end
end
