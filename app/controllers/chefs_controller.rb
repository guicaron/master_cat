class ChefsController < ApplicationController
  before_action :find_chef, only: %i[show destroy edit update]

  def home
    @chefs = Chef.all
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)

    @chef.user_id = current_user.id

    if @chef.save
      redirect_to chef_path(@chef.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @chef.update(chef_params)
    redirect_to root_path(@chef)
  end

  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy
    redirect_to chef_path, status: :see_other
  end

  private

  def find_chef
    @chef = Chef.find(params[:id])
  end

  def chef_params
    params.require(:chef).permit(:speciality, :cat_name, :price, :user_id)
  end
end
