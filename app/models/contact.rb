class Contact < ApplicationRecord
  has_many :phones # has many phones (possui muitos phones)
  has_one :address # has one address (possui um endereço)

  has_many :contact_kinds # contact has many <intermedium table> (contact possui muitos 'tabela intermediária')
  has_many :kinds, through: :contact_kinds # contact has many kinds, through of <intermedium table> (contact possui muitos kinds, através da 'tabela intermediária')
end