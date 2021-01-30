class ToppingTypesController < ApplicationController

    def index
        topping_types = Topping_Type.all
        render json: topping_types
    end

    def create
    end

    def update
    end

    def destroy
    end
    

    private

    def topping_type_params
        params.require(:topping_type).permit(:name)
    end

end
