require 'spec_helper'

feature 'gerenciar produto' do

  scenario 'incluir produto' do #, :javascript => true do

    loja = FactoryGirl.create(:loja, :nome => "YYY")
    promocao = FactoryGirl.create(:promocao, :nome => 'XXX')

    visit new_produto_path

    preencher_e_verificar_produto
   

  end

  scenario 'alterar produto' do #, :javascript => true do

    loja = FactoryGirl.create(:loja, :nome => "YYY")
    promocao = FactoryGirl.create(:promocao, :nome => 'XXX')

    produto = FactoryGirl.create(:produto,:loja => loja,:promocao => promocao)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto


  end

  scenario 'excluir produto' do #, :javascript => true do

    loja = FactoryGirl.create(:loja, :nome => "YYY")
    promocao = FactoryGirl.create(:promocao, :nome => 'XXX')

    produto = FactoryGirl.create(:produto,:loja => loja,:promocao => promocao)

    visit produtos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_produto

    select 'YYY', :from => 'Loja'
    select 'XXX', :from => 'Promocao'

    fill_in 'Nome', :with => 'liquidificador'
    fill_in 'Descricao', :with => 'servem para bater'
    fill_in 'Preco' , :with => '23'
    click_button 'Salvar'
    
    page.should have_content 'Loja: YYY'
    page.should have_content 'Promocao: XXX'
    page.should have_content 'Nome: liquidificador'
    page.should have_content 'Descricao: servem para bater'
    page.should have_content 'Preco:  23'
    
  end

      

end
