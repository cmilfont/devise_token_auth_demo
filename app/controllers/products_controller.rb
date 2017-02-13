class ProductsController < ApplicationController

  #before_action :authenticate_api_user!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_api_user.email}",
        user: current_api_user
      }
    }, status: 200
  end

  def camisas
    render json: {
      data: [
        {
          name: 'Camisa do Vasco',
          preco: 10000
        }
      ]
    }, status: 200
  end

end
