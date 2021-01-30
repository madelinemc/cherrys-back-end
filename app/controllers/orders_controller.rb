class OrdersController < ApplicationController

    def index
    end

    def create
        order = Order.new(order_params)
        if order.save
            render({json: order, except: [:created_at, :updated_at]})
        else
            render json: order.errors, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end
    

    private

    def order_params
        params.require(:order).permit(:user_id, :time_ordered)
    end

end
