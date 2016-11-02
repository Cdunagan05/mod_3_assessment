class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all, status: 200
  end

  def show
    render json: Item.find(params[:id]), status: 200
  end

  def destroy
    render json: Item.find(params[:id]).delete, status: 204
  end



end
