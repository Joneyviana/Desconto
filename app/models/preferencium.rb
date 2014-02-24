class Preferencium < ActiveRecord::Base
  belongs_to :produto
  belongs_to :cliente
end
