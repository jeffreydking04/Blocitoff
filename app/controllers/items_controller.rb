class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was created successfully."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "Error creating item.  Please try again."
      redirect_to user_path(current_user)
    end    
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
