class CustomersController < ApplicationController

    def index
        @flavor = Flavor.all
        render json: @flavor
    end

    def create

        customer = Customer.new(customer_params)
        if customer.save
            render({json: customer, except: [:created_at, :updated_at]})
        else
            render json: customer.errors, status: :unprocessable_entity
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :phone_number)
    end


end
