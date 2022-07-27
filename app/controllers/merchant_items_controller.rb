class MerchantItemsController < ApplicationController
  def index
    @merchant = Merchant.find(params[:merchant_id])
    @items = @merchant.items
  end

  def show
    @merchant = Merchant.find(params[:merchant_id])
    @item = Item.find(params[:id])
  end

  def edit
    @merchant = Merchant.find(params[:merchant_id])
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.update(name: params[:item_name], description: params[:item_description], unit_price: params[:item_price])

    redirect_to "/merchants/#{params[:merchant_id]}/items/#{params[:id]}", notice: 'Item information updated!'
  end

  private

  def merchant_item_params
    params.require(:item_name, :item_description, :item_price)
  end
end

# {"utf8"=>"✓", "_method"=>"patch", "name"=>"Another Shoe", "description"=>"A perfect match if you only have one shoe", "price"=>"6000", "commit"=>"Submit", "controller"=>"merchant_items", "action"=>"update", "merchant_id"=>"1754", "item_id"=>"1491"} permitted: false>
