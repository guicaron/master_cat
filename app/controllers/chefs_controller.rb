class ChefsController < ApplicationController
<<<<<<< HEAD
  def home
=======
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
>>>>>>> 01caa10e59e9dce68f49fe4e7a294a6b9ecaf2e5
  end
end
