class Contact < ApplicationRecord
  has_many :phones, dependent: :destroy # has many phones (possui muitos phones) - depentend: :destroy will remove the data too if the Contact was deleted.
  has_one :address, dependent: :destroy # has one address (possui um endereço) - depentend: :destroy will remove the data too if the Contact was deleted.

  has_many :contact_kinds # contact has many <intermedium table> (contact possui muitos 'tabela intermediária')
  has_many :kinds, through: :contact_kinds # contact has many kinds, through of <intermedium table> (contact possui muitos kinds, através da 'tabela intermediária')

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :address
end