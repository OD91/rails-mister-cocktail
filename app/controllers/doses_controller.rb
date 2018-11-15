class DosesController < ApplicationController
  def new
    # we need @cocktail in our `simple_form_for`
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(dose_params[:ingredient_id])
    # we need `cocktail_id` to asssociate dose with corresponding cocktail
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
