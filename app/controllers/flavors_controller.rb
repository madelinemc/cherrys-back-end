class FlavorsController < ApplicationController

    def index
        flavors = Flavor.all
        render({json: flavors, except: [:created_at, :updated_at]})
    end

    def create
    end

    def update
    end

    def destroy
    end
    

    private

    def flavor_params
        params.require(:topping_type).permit(:name)
    end

end
