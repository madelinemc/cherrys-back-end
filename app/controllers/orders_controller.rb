class OrdersController < ApplicationController

    def index
        order = Order.all
        render json: order
    end

    def create
        order = Order.new(order_params)

        if order.save
            render({json: order, except: [:created_at, :updated_at, :time_ordered]})
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
        params.require(:order).permit(:customer_id, :time_ordered)
    end

end
