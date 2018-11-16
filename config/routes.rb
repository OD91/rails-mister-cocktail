Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # GET "cocktails"       #index
  # GET "cocktails/new"   #new
  # POST "cocktails"      #create
  # GET "cocktails/42"    #show
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end


  #--------------------

  # A user can add a new dose (ingredient/description pair) to an existing cocktail
  # Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.

  # GET "cocktails/42/doses/new" #new
  # POST "cocktails/42/doses"    #create
  # DELETE "doses/25"            #destroy

  # resources :doses, only: [:new, :create, :destroy]

  #--------------------

  # IngredientsController?
end
