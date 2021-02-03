class ToppingTypesController < ApplicationController

    def index
        topping_types = ToppingType.all
        render({json: topping_types, except: [:created_at, :updated_at]})
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
