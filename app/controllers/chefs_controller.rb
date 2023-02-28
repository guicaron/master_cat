class ChefsController < ApplicationController

  before_action :find_chef, only: %i[show destroy]

  def home
    @chefs = Chef.all
  end


  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      redirect_to chef_path(@chef.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy
    redirect_to root_path, status: :see_other
  end

  private
  def chef_params
    params.require(:chef).permit(:speciality, :cat_name, :price, :user_id)
  end
end
