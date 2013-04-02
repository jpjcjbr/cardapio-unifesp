class Cardapio < ActiveRecord::Base
  attr_accessible :data, :tipo, :items_attributes
  has_many :items
  accepts_nested_attributes_for :items
end
