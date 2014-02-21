class Produto < ActiveRecord::Base
  belongs_to :loja
  belongs_to :promocao
end
