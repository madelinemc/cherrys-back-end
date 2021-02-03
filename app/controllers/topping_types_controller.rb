class ToppingTypesController < ApplicationController

    def index
        topping_types = ToppingType.all
        render({json: topping_types, except: [:created_at, :updated_at]})
    end

end
