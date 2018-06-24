class ContactsController < ApplicationController
  # before_action is used to say that action 'set_contact' will always called before these others actions ':show, :edit, :update and :destroy'.
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  
  # list all contacts records
  def index
    @contacts = Contact.all
  end

  def show
  end

  # call view with form to create a new contact
  def new
    @contact = Contact.new
  end

  # this is the post action, that will called after new's (action) form was submited
  def create
    @contact = Contact.new( contact_params )

    if @contact.save
      redirect_to contacts_path
    else 
      render :new, notice: "Não foi possível criar um novo contato"
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path
    else 
      render :new, notice: "Não foi possível editar o contato"
    end
  end

  def destroy
    @contact.destroy

    if @contact.destroy
      redirect_to contacts_path
    else 
      render :show, notice: "Não foi possível excluir o contato"
    end
  end

  # Private methods/actions
  private

    # this method is used to get the contact's id params passed from url
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # this method is used to get all params from view and then, pass to anothers actions
    def contact_params      
      params.require(:contact).permit(:name)
    end
end
