class Kind < ApplicationRecord
  has_many :contact_kinds # kind has many <intermedium table> (kind possui muitos 'tabela intermediária')
  has_many :contacts, through: :contact_kinds # kind has many contacts, through of <intermedium table> (kinds possui muitos contacts, através da 'tabela intermediária')
end
