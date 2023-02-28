class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    # if  @chef.save
    # #   redirect_to (@)
    # # else
    # #   render :new, status: :unprocessable_entity
    # # end
  end

  private
  def chef_params
    params.require(:chef.permit(:speciality, :cat_name, :price))
  end
end
