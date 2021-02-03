class FlavorsController < ApplicationController

    def index
        flavors = Flavor.all
        render({json: flavors, except: [:created_at, :updated_at]})
    end

end
