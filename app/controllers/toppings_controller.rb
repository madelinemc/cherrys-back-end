class ToppingsController < ApplicationController

    def create

        topping = Topping.create(topping_params)
        if topping.save
            render({json: topping, except: [:created_at, :updated_at]})
        else
            render json: topping.errors, status: :unprocessable_entity
        end
    end

    private

    def topping_params
        params.require(:topping).permit(:order_id, :topping_type_id)
    end

end
