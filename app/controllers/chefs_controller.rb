class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    #TEEEEEEEEEESTTTTTTt
    @chef.user_id = current_user.id

    if @chef.save
      redirect_to chef_path(@chef)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def chef_params
    params.require(:chef).permit(:cat_name, :speciality, :price, :user_id)
  end
end
