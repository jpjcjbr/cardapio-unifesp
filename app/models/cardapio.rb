class Cardapio < ActiveRecord::Base
  attr_accessible :data, :tipo, :items_attributes
  has_many :items
  accepts_nested_attributes_for :items

  validates_presence_of :tipo
  validates_uniqueness_of :data, :scope =>[:tipo]
end
