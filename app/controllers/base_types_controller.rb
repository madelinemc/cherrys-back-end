class BaseTypesController < ApplicationController

    def index
        base_types = BaseType.all
        render json: base_types
    end

    def create
    end

    def update
    end

    def destroy
    end
    

    private

    def topping_type_params
        params.require(:base_type).permit(:name)
    end


end
