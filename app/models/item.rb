class Item < ActiveRecord::Base
  belongs_to :cardapio
  attr_accessible :categoria, :descricao
end
