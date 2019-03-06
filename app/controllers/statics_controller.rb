class StaticsController < ApplicationController
  def index
    @item = Item.paginate(:page => params[:page])
  end
end
