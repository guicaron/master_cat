class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.save
  end




  private
  def chef_params
    params.require(:chef.permit(:speciality, :cat_name, :price))
  end
end
