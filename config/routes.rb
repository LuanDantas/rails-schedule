Rails.application.routes.draw do
  get 'contacts/index'
  get 'contacts/show'
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/edit'
  get 'contacts/update'
  get 'contacts/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
